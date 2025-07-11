#!/usr/bin/env python3
"""
Sensor-Enhanced Medical Knowledge Distillation - 300 Samples
Enhanced version with 300 comprehensive medical scenarios
"""

import torch
import json
import random
import os
from transformers import (
    AutoTokenizer, AutoModelForCausalLM, 
    Trainer, TrainingArguments, pipeline
)
from datasets import Dataset

class SensorEnhancedKnowledgeDistillation300:
    def __init__(self):
        print("Initializing Sensor-Enhanced Knowledge Distillation (300 samples)...")
        
        # Teacher model - MedGemma-27B (4-bit quantized)
        print("Loading teacher model (MedGemma-27B)...")
        self.teacher_pipe = pipeline(
            "text-generation",
            model="unsloth/medgemma-27b-text-it-bnb-4bit",
            device_map="auto",
            trust_remote_code=True,
            torch_dtype=torch.bfloat16,
        )
        
        print("Loading student model (QwQ-0.5B)...")
        # Student model - needs training
        self.student_path = "kz919/QwQ-0.5B-Distilled"
        self.student_tokenizer = AutoTokenizer.from_pretrained(self.student_path)
        self.student_model = AutoModelForCausalLM.from_pretrained(
            self.student_path,
            torch_dtype=torch.bfloat16,
            device_map="auto"
        )
        
        if self.student_tokenizer.pad_token is None:
            self.student_tokenizer.pad_token = self.student_tokenizer.eos_token
    
    def load_training_data_300(self):
        """Load existing 300-sample training data"""
        data_file = "sensor_enhanced_training_data_300_en.json"
        
        if os.path.exists(data_file):
            print(f"Loading existing training data from {data_file}...")
            with open(data_file, 'r', encoding='utf-8') as f:
                return json.load(f)
        else:
            print(f"Training data file {data_file} not found!")
            return None
    
    def get_teacher_labels(self, input_data):
        """Get teacher model responses for the input data"""
        print("Generating teacher labels...")
        
        for i, item in enumerate(input_data):
            if i % 10 == 0:
                print(f"Processing item {i+1}/{len(input_data)}")
            
            # Create teacher prompt
            teacher_prompt = f"""Patient presents with the following:
Symptoms: {item['symptoms']}
Vital Signs:
- Heart Rate: {item['sensor_data']['heart_rate']} bpm
- Body Temperature: {item['sensor_data']['temperature']}°C
- Stress Level: {item['sensor_data']['stress_level']}/10
- Blood Pressure: {item['sensor_data']['systolic_bp']}/{item['sensor_data']['diastolic_bp']} mmHg

Based on these symptoms and vital signs, provide comprehensive diagnosis and treatment recommendations:"""
            
            # Get teacher response
            try:
                teacher_output = self.teacher_pipe(
                    teacher_prompt,
                    max_new_tokens=150,
                    temperature=0.7,
                    do_sample=True,
                    top_p=0.9
                )
                
                teacher_response = teacher_output[0]['generated_text']
                teacher_label = teacher_response.replace(teacher_prompt, "").strip()
                
                item['teacher_label'] = teacher_label
                
            except Exception as e:
                print(f"Error generating teacher label for item {i}: {e}")
                item['teacher_label'] = "Unable to generate teacher response."
        
        return input_data
    
    def train_step(self, batch):
        """Single training step with knowledge distillation"""
        # Prepare inputs
        student_inputs = self.student_tokenizer(
            batch['student_input'], 
            return_tensors="pt", 
            padding=True, 
            truncation=True,
            max_length=512
        )
        
        teacher_labels = self.student_tokenizer(
            batch['teacher_label'],
            return_tensors="pt",
            padding=True,
            truncation=True,
            max_length=512
        )
        
        # Move to device
        device = next(self.student_model.parameters()).device
        student_inputs = {k: v.to(device) for k, v in student_inputs.items()}
        teacher_labels = {k: v.to(device) for k, v in teacher_labels.items()}
        
        # Forward pass
        outputs = self.student_model(**student_inputs, labels=teacher_labels['input_ids'])
        
        return outputs.loss
    
    def train(self, epochs=10, lr=1e-5):
        """Train the student model using knowledge distillation"""
        print("Starting training...")
        
        # Load training data
        training_data = self.load_training_data_300()
        if training_data is None:
            print("Error: No training data found!")
            return
        
        print(f"Loaded {len(training_data)} training samples")
        
        # Check if teacher labels exist
        if 'teacher_label' not in training_data[0]:
            print("Generating teacher labels...")
            training_data = self.get_teacher_labels(training_data)
            
            # Save updated data
            with open("sensor_enhanced_training_data_300_en.json", 'w', encoding='utf-8') as f:
                json.dump(training_data, f, ensure_ascii=False, indent=2)
        
        # Prepare dataset
        dataset_dict = {
            'student_input': [item['student_input'] for item in training_data],
            'teacher_label': [item['teacher_label'] for item in training_data]
        }
        
        dataset = Dataset.from_dict(dataset_dict)
        
        # Training arguments
        training_args = TrainingArguments(
            output_dir="./sensor_enhanced_student_model_300_en",
            num_train_epochs=epochs,
            per_device_train_batch_size=2,
            gradient_accumulation_steps=4,
            warmup_steps=50,
            learning_rate=lr,
            logging_steps=30,
            save_steps=150,
            save_total_limit=2,
            prediction_loss_only=True,
            remove_unused_columns=False,
            dataloader_pin_memory=False,
        )
        
        # Custom trainer for knowledge distillation
        class StudentTrainer(Trainer):
            def __init__(self, distillation_model, *args, **kwargs):
                super().__init__(*args, **kwargs)
                self.distillation_model = distillation_model
                
            def compute_loss(self, model, inputs, return_outputs=False, **kwargs):
                loss = self.distillation_model.train_step(inputs)
                return (loss, None) if return_outputs else loss
        
        def identity_collate(batch):
            """Custom collate function that doesn't modify the batch"""
            return {
                'student_input': [item['student_input'] for item in batch],
                'teacher_label': [item['teacher_label'] for item in batch]
            }
        
        # Initialize trainer
        trainer = StudentTrainer(
            distillation_model=self,
            model=self.student_model,
            args=training_args,
            train_dataset=dataset,
            tokenizer=self.student_tokenizer,
            data_collator=identity_collate,
        )
        
        # Train
        trainer.train()
        
        # Save final model
        trainer.save_model()
        print("Training completed!")
        print(f"Model saved to: ./sensor_enhanced_student_model_300_en")
    
    def test_student(self, symptoms, sensor_data=None):
        """Test the trained student model"""
        if sensor_data is None:
            sensor_data = self.generate_sensor_data(symptoms)
        
        input_prompt = f"""Symptoms: {symptoms}
Vital Signs:
- Heart Rate: {sensor_data['heart_rate']} bpm
- Body Temperature: {sensor_data['temperature']}°C  
- Stress Level: {sensor_data['stress_level']}/10
- Blood Pressure: {sensor_data['systolic_bp']}/{sensor_data['diastolic_bp']} mmHg
Treatment Plan:"""
        
        inputs = self.student_tokenizer(input_prompt, return_tensors="pt")
        device = next(self.student_model.parameters()).device
        inputs = {k: v.to(device) for k, v in inputs.items()}
        
        with torch.no_grad():
            outputs = self.student_model.generate(
                **inputs,
                max_new_tokens=100,
                temperature=0.7,
                do_sample=True,
                top_p=0.9,
                pad_token_id=self.student_tokenizer.eos_token_id
            )
        
        response = self.student_tokenizer.decode(outputs[0], skip_special_tokens=True)
        return response.replace(input_prompt, "").strip()

def main():
    """Main training function"""
    print("🏥 Sensor-Enhanced Medical Knowledge Distillation - 300 Samples")
    print("=" * 70)
    
    # Initialize distillation
    distillation = SensorEnhancedKnowledgeDistillation300()
    
    # Train model
    distillation.train(epochs=10, lr=1e-5)
    
    print("\n" + "=" * 70)
    print("Training completed successfully!")
    print("You can now test the model using demo_sensor_enhanced_99_en.py")
    print("(Remember to update the model path to sensor_enhanced_student_model_300_en)")

if __name__ == "__main__":
    main() 