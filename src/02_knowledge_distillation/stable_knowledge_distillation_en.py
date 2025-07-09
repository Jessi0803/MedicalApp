import torch
import torch.nn.functional as F
from transformers import (
    AutoTokenizer, 
    AutoModelForCausalLM,
    TrainingArguments,
    Trainer,
    pipeline
)
from datasets import Dataset
import json

class StableKnowledgeDistillationEN:
    def __init__(self):
        print("Loading teacher model (MedGemma-27B 4-bit) using pipeline...")
        # Teacher model - use pipeline approach, same as your medgemma.py
        self.teacher_pipe = pipeline(
            "text-generation",
            model="unsloth/medgemma-27b-text-it-bnb-4bit",
            device_map="auto",
            trust_remote_code=True,
            torch_dtype=torch.bfloat16,  # Use bfloat16, same as your settings
        )
        
        print("Loading student model (QwQ-0.5B)...")
        # Student model - needs training
        self.student_path = "/home/jc/.cache/huggingface/hub/models--kz919--QwQ-0.5B-Distilled/snapshots/9aed656541d9d245a6804f118d98276984164be8"
        self.student_tokenizer = AutoTokenizer.from_pretrained(self.student_path)
        self.student_model = AutoModelForCausalLM.from_pretrained(
            self.student_path,
            torch_dtype=torch.bfloat16,  # Also use bfloat16
            device_map="auto"
        )
        
        if self.student_tokenizer.pad_token is None:
            self.student_tokenizer.pad_token = self.student_tokenizer.eos_token
    
    def create_input_data(self):
        """Create input symptom data in English"""
        symptoms_list = [
            "headache, fever, general weakness",
            "chest pain, difficulty breathing, palpitations", 
            "abdominal pain, nausea, vomiting",
            "joint pain, swelling, stiffness",
            "insomnia, anxiety, irritability",
            "cough, sore throat, runny nose",
            "back pain, lower limb numbness",
            "blurred vision, eye fatigue",
            "skin itching, redness and swelling",
            "dizziness, tinnitus, poor balance",
            "stomach pain, indigestion, loss of appetite",
            "muscle pain, fatigue, weakness",
            "high blood pressure, dizziness, rapid heartbeat",
            "diabetes symptoms, frequent urination, thirst",
            "asthma, shortness of breath, chest tightness"
        ]
        
        input_data = []
        for symptoms in symptoms_list:
            # Teacher model input format
            teacher_prompt = f"Patient presents with symptoms: {symptoms}. Provide diagnosis and treatment recommendations:"
            
            # Student model input format (English)
            student_input = f"Symptoms: {symptoms}\nTreatment:"
            
            input_data.append({
                "teacher_prompt": teacher_prompt,
                "student_input": student_input,
                "symptoms": symptoms
            })
        
        return input_data
    
    def get_teacher_labels(self, input_data):
        """Generate labels using teacher model (using pipeline, more stable)"""
        print("Generating teacher labels using pipeline...")
        labeled_data = []
        
        for i, item in enumerate(input_data):
            print(f"Processing {i+1}/{len(input_data)}: {item['symptoms']}")
            
            try:
                # Generate teacher's response using pipeline (same as your medgemma.py)
                result = self.teacher_pipe(
                    item['teacher_prompt'], 
                    max_new_tokens=100,
                    temperature=0.7,
                    do_sample=True,
                    top_p=0.9
                )
                
                # Extract teacher's answer
                teacher_response = result[0]['generated_text']
                teacher_label = teacher_response.replace(item['teacher_prompt'], "").strip()
                
                if not teacher_label:
                    teacher_label = "Recommend medical consultation for proper diagnosis and appropriate treatment based on symptoms."
                
                labeled_data.append({
                    "student_input": item['student_input'],
                    "teacher_label": teacher_label,
                    "symptoms": item['symptoms']
                })
                
                print(f"Teacher label: {teacher_label[:80]}...")
                
            except Exception as e:
                print(f"Teacher generation failed for {item['symptoms']}: {e}")
                # Use backup label
                labeled_data.append({
                    "student_input": item['student_input'],
                    "teacher_label": "Recommend medical consultation for proper diagnosis and appropriate treatment based on symptoms.",
                    "symptoms": item['symptoms']
                })
        
        return labeled_data
    
    def train_step(self, batch):
        """Student model training step"""
        self.student_model.train()
        
        # Combine input and target
        full_text = batch['student_input'] + " " + batch['teacher_label']
        
        # Student model forward pass
        inputs = self.student_tokenizer(
            full_text,
            return_tensors="pt",
            padding=True,
            truncation=True,
            max_length=200
        )
        
        device = next(self.student_model.parameters()).device
        inputs = {k: v.to(device) for k, v in inputs.items()}
        
        # Create labels (autoregressive language modeling)
        labels = inputs['input_ids'].clone()
        
        # Calculate student input length, only compute loss on teacher label part
        student_input_tokens = self.student_tokenizer(
            batch['student_input'],
            return_tensors="pt",
            truncation=True,
            max_length=200
        )
        student_input_length = student_input_tokens['input_ids'].size(1)
        
        # Set student input part labels to -100 (no loss computation)
        labels[:, :student_input_length] = -100
        
        # Student model forward pass
        outputs = self.student_model(**inputs, labels=labels)
        loss = outputs.loss
        
        return loss
    
    def train(self, epochs=3, lr=1e-5):
        """Train student model"""
        print("Creating input data...")
        input_data = self.create_input_data()
        
        print("Getting teacher labels...")
        training_data = self.get_teacher_labels(input_data)
        dataset = Dataset.from_list(training_data)
        
        # Save training data
        with open("stable_distillation_data_en.json", "w", encoding="utf-8") as f:
            json.dump(training_data, f, ensure_ascii=False, indent=2)
        print("Training data saved to stable_distillation_data_en.json")
        
        # Training arguments
        training_args = TrainingArguments(
            output_dir="./stable_student_model_en",
            num_train_epochs=epochs,
            per_device_train_batch_size=1,
            learning_rate=lr,
            warmup_steps=3,
            logging_steps=2,
            save_steps=50,
            save_total_limit=2,
            prediction_loss_only=True,
            remove_unused_columns=False,
            gradient_accumulation_steps=2,
            max_grad_norm=1.0,
            fp16=False,  # Use bfloat16, not fp16
            bf16=True,   # Use bfloat16
        )
        
        # Custom trainer
        class StudentTrainer(Trainer):
            def __init__(self, distillation_model, *args, **kwargs):
                super().__init__(*args, **kwargs)
                self.distillation_model = distillation_model
                self._signature_columns = []
            
            def compute_loss(self, model, inputs, return_outputs=False, **kwargs):
                loss = self.distillation_model.train_step(inputs)
                return (loss, None) if return_outputs else loss
        
        def identity_collate(batch):
            return batch[0]
        
        # Create trainer
        trainer = StudentTrainer(
            distillation_model=self,
            model=self.student_model,
            args=training_args,
            train_dataset=dataset,
            data_collator=identity_collate,
        )
        
        print("Starting student model training with teacher labels...")
        trainer.train()
        
        # Save model
        trainer.save_model()
        self.student_tokenizer.save_pretrained("./stable_student_model_en")
        print("Training completed! Student model saved to ./stable_student_model_en")
    
    def test_student(self, symptoms):
        """Test student model"""
        self.student_model.eval()
        
        prompt = f"Symptoms: {symptoms}\nTreatment:"
        inputs = self.student_tokenizer(
            prompt,
            return_tensors="pt",
            truncation=True,
            max_length=150
        )
        
        device = next(self.student_model.parameters()).device
        inputs = {k: v.to(device) for k, v in inputs.items()}
        
        with torch.no_grad():
            try:
                outputs = self.student_model.generate(
                    **inputs,
                    max_new_tokens=80,
                    temperature=0.7,
                    do_sample=True,
                    pad_token_id=self.student_tokenizer.eos_token_id
                )
                
                response = self.student_tokenizer.decode(outputs[0], skip_special_tokens=True)
                response = response.replace(prompt, "").strip()
                return response
                
            except Exception as e:
                print(f"Generation error: {e}")
                return ""

def main():
    print("=== Stable Knowledge Distillation (English) ===")
    print("Teacher Model: MedGemma-27B (pipeline + bfloat16)")
    print("Student Model: QwQ-0.5B (training)")
    print("Method: Teacher Output → Student Labels")
    print("="*60)
    
    # Create knowledge distiller
    distiller = StableKnowledgeDistillationEN()
    
    # Start training
    distiller.train(epochs=3, lr=1e-5)
    
    # Test student model
    test_cases = [
        "headache, fever, general weakness",
        "chest pain, difficulty breathing",
        "abdominal pain, nausea, vomiting",
        "joint pain, swelling",
        "cough, sore throat"
    ]
    
    print("\n=== Testing Distilled Student Model ===")
    for symptoms in test_cases:
        result = distiller.test_student(symptoms)
        print(f"\nSymptoms: {symptoms}")
        print(f"Student Model Recommendation: {result}")
        print("-" * 60)

if __name__ == "__main__":
    main() 