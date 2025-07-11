#!/usr/bin/env python3
"""
Medical Demo with automatic model download from Hugging Face (Memory Efficient)
- Only loads student model (4-6GB VRAM vs 24GB)
- No teacher model required for demo
- Same user experience as original
"""

import torch
import os
from transformers import AutoTokenizer, AutoModelForCausalLM
import random

class MedicalDemoMemoryEfficient:
    def __init__(self, hf_model_id=None):
        print("Medical AI Diagnosis System (Memory Efficient)")
        print("=" * 50)
        
        self.local_model_path = "../src/03_sensor_enhanced/sensor_enhanced_student_model_99_en"
        self.hf_model_id = hf_model_id  # 例如: "your_username/medical-student-model-99"
        
        # 只載入學生模型 - 無需教師模型
        self.load_student_model()
    
    def load_student_model(self):
        """Load student model (local or Hugging Face)"""
        
        # First check local model
        if os.path.exists(self.local_model_path):
            print("Found local trained model, using local version...")
            try:
                self.student_tokenizer = AutoTokenizer.from_pretrained(self.local_model_path)
                self.student_model = AutoModelForCausalLM.from_pretrained(
                    self.local_model_path,
                    torch_dtype=torch.bfloat16,
                    device_map="auto"
                )
                print("Local model loaded successfully")
                return
            except Exception as e:
                print(f"Failed to load local model: {e}")
        
        # If no local model, try downloading from Hugging Face
        if self.hf_model_id:
            print(f"Downloading model from Hugging Face: {self.hf_model_id}")
            try:
                self.student_tokenizer = AutoTokenizer.from_pretrained(self.hf_model_id)
                self.student_model = AutoModelForCausalLM.from_pretrained(
                    self.hf_model_id,
                    torch_dtype=torch.bfloat16,
                    device_map="auto"
                )
                print("Hugging Face model loaded successfully")
                return
            except Exception as e:
                print(f"Failed to load Hugging Face model: {e}")
        
        # Fallback to base student model
        print("Trying fallback base model (QwQ-0.5B)...")
        try:
            self.student_tokenizer = AutoTokenizer.from_pretrained("kz919/QwQ-0.5B-Distilled")
            self.student_model = AutoModelForCausalLM.from_pretrained(
                "kz919/QwQ-0.5B-Distilled",
                torch_dtype=torch.bfloat16,
                device_map="auto"
            )
            print("Base model loaded (not medically trained)")
            print("For best results, please train the model first")
            return
        except Exception as e:
            print(f"Failed to load base model: {e}")
        
        # If all failed
        print("Error: Unable to load any model")
        print("Please ensure you have internet connection and sufficient GPU memory")
        exit(1)
    
    def generate_sensor_data(self, symptoms):
        """Generate sensor data based on symptoms"""
        # Base normal values
        base_heart_rate = 70
        base_temperature = 36.5
        base_stress = 3
        base_systolic = 120
        base_diastolic = 80
        
        heart_rate = base_heart_rate
        temperature = base_temperature
        stress_level = base_stress
        systolic_bp = base_systolic
        diastolic_bp = base_diastolic
        
        # Adjust based on symptoms
        if "fever" in symptoms.lower():
            temperature += random.uniform(1.0, 3.5)
            heart_rate += random.randint(10, 30)
            stress_level += random.randint(1, 3)
        
        if "chest pain" in symptoms.lower():
            heart_rate += random.randint(15, 35)
            systolic_bp += random.randint(10, 40)
            diastolic_bp += random.randint(5, 20)
            stress_level += random.randint(3, 5)
        
        if "headache" in symptoms.lower():
            stress_level += random.randint(2, 4)
            systolic_bp += random.randint(5, 15)
        
        if "anxiety" in symptoms.lower() or "stress" in symptoms.lower():
            heart_rate += random.randint(10, 25)
            stress_level += random.randint(3, 6)
            systolic_bp += random.randint(5, 20)
        
        # Ensure values are within reasonable range
        heart_rate = max(40, min(180, heart_rate))
        temperature = max(35.0, min(42.0, temperature))
        stress_level = max(1, min(10, stress_level))
        systolic_bp = max(80, min(200, systolic_bp))
        diastolic_bp = max(50, min(120, diastolic_bp))
        
        return {
            "heart_rate": round(heart_rate),
            "temperature": round(temperature, 1),
            "stress_level": stress_level,
            "systolic_bp": round(systolic_bp),
            "diastolic_bp": round(diastolic_bp)
        }
    
    def get_student_diagnosis(self, symptoms, sensor_data):
        """Use student model for diagnosis"""
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
                max_new_tokens=200,
                temperature=0.7,
                do_sample=True,
                top_p=0.9,
                pad_token_id=self.student_tokenizer.eos_token_id
            )
        
        response = self.student_tokenizer.decode(outputs[0], skip_special_tokens=True)
        return response.replace(input_prompt, "").strip()
    
    def run_demo(self):
        """Run interactive demo - original simple input style"""
        print("\nStarting medical diagnosis...")
        print("💡 Memory Efficient Version - Only 4-6GB VRAM required")
        
        while True:
            print("\n" + "="*60)
            symptoms = input("Enter symptoms (or type 'quit' to exit): ").strip()
            
            if symptoms.lower() == 'quit':
                break
            
            if not symptoms:
                symptoms = "chest pain, shortness of breath"
                print(f"Using default symptoms: {symptoms}")
            
            # Generate sensor data
            sensor_data = self.generate_sensor_data(symptoms)
            
            print(f"\nSymptoms: {symptoms}")
            print(f"Vital Signs:")
            print(f"  Heart Rate: {sensor_data['heart_rate']} bpm")
            print(f"  Temperature: {sensor_data['temperature']}°C")
            print(f"  Stress Level: {sensor_data['stress_level']}/10")
            print(f"  Blood Pressure: {sensor_data['systolic_bp']}/{sensor_data['diastolic_bp']} mmHg")
            
            # Student model diagnosis
            print(f"\nAI Medical Analysis:")
            print("-" * 30)
            try:
                student_diagnosis = self.get_student_diagnosis(symptoms, sensor_data)
                print(student_diagnosis)
            except Exception as e:
                print(f"Error generating diagnosis: {e}")
                print("This might be due to GPU memory issues")
        
        print("Thank you for using the Medical Diagnosis System!")

def main():
    print("=== Medical AI Demo (Memory Efficient) ===")
    print(" GPU Memory Required: 4-6GB (vs 24GB for original)")
    print(" No teacher model loading - faster startup")
    print()
    
    # You can set Hugging Face model ID here
    hf_model_id = "Jie-Si/medical-student-model-99"  # Replace with your model
    
    try:
        demo = MedicalDemoMemoryEfficient(hf_model_id=hf_model_id)
        demo.run_demo()
    except KeyboardInterrupt:
        print("\nDemo interrupted by user")
    except Exception as e:
        print(f"\nDemo failed: {e}")
        print("\nTroubleshooting:")
        print("1. Check GPU memory (需要 4-6GB VRAM)")
        print("2. Ensure internet connection")
        print("3. Try on a compatible GPU")

if __name__ == "__main__":
    main() 