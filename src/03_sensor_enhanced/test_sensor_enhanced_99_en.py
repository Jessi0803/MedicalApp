import torch
from transformers import AutoTokenizer, AutoModelForCausalLM, pipeline
import json
import random

class TestSensorEnhancedModel99:
    def __init__(self):
        print("Loading trained sensor-enhanced student model...")
        
        # Load trained student model
        self.model_path = "./sensor_enhanced_student_model_99_en"
        self.tokenizer = AutoTokenizer.from_pretrained(self.model_path)
        self.model = AutoModelForCausalLM.from_pretrained(
            self.model_path,
            torch_dtype=torch.bfloat16,
            device_map="auto"
        )
        
        # Load teacher model for comparison
        print("Loading teacher model for comparison...")
        self.teacher_pipe = pipeline(
            "text-generation",
            model="unsloth/medgemma-27b-text-it-bnb-4bit",
            device_map="auto",
            trust_remote_code=True,
            torch_dtype=torch.bfloat16,
        )
        
        print("Models loaded successfully!")
    
    def generate_sensor_data(self, symptoms):
        """Generate realistic sensor data based on symptoms"""
        # Base normal values
        base_heart_rate = 70
        base_temperature = 36.5
        base_stress = 3
        base_systolic = 120
        base_diastolic = 80
        
        # Adjust based on symptoms
        heart_rate = base_heart_rate
        temperature = base_temperature
        stress_level = base_stress
        systolic_bp = base_systolic
        diastolic_bp = base_diastolic
        
        # Symptom-based adjustments
        if "fever" in symptoms.lower() or "high temperature" in symptoms.lower():
            temperature += random.uniform(1.0, 3.5)
            heart_rate += random.randint(10, 30)
            stress_level += random.randint(1, 3)
        
        if "palpitations" in symptoms.lower() or "rapid heartbeat" in symptoms.lower():
            heart_rate += random.randint(20, 50)
            stress_level += random.randint(2, 4)
        
        if "chest pain" in symptoms.lower() or "chest discomfort" in symptoms.lower():
            heart_rate += random.randint(15, 35)
            systolic_bp += random.randint(10, 40)
            diastolic_bp += random.randint(5, 20)
            stress_level += random.randint(3, 5)
        
        if "hypertension" in symptoms.lower() or "high blood pressure" in symptoms.lower():
            systolic_bp += random.randint(20, 60)
            diastolic_bp += random.randint(10, 30)
            heart_rate += random.randint(5, 20)
        
        if "anxiety" in symptoms.lower() or "stress" in symptoms.lower():
            heart_rate += random.randint(10, 25)
            stress_level += random.randint(3, 6)
            systolic_bp += random.randint(5, 20)
        
        if "headache" in symptoms.lower() or "head pain" in symptoms.lower():
            stress_level += random.randint(2, 4)
            systolic_bp += random.randint(5, 15)
        
        if "fatigue" in symptoms.lower() or "weakness" in symptoms.lower():
            heart_rate -= random.randint(5, 15)
            stress_level += random.randint(1, 3)
        
        # Ensure values are within realistic ranges
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
    
    def test_student_model(self, symptoms, sensor_data=None):
        """Test the trained student model"""
        if sensor_data is None:
            sensor_data = self.generate_sensor_data(symptoms)
        
        # Create input prompt
        input_prompt = f"""Symptoms: {symptoms}
Vital Signs:
- Heart Rate: {sensor_data['heart_rate']} bpm
- Body Temperature: {sensor_data['temperature']}°C  
- Stress Level: {sensor_data['stress_level']}/10
- Blood Pressure: {sensor_data['systolic_bp']}/{sensor_data['diastolic_bp']} mmHg
Treatment Plan:"""
        
        # Generate student response
        inputs = self.tokenizer(input_prompt, return_tensors="pt")
        device = next(self.model.parameters()).device
        inputs = {k: v.to(device) for k, v in inputs.items()}
        
        with torch.no_grad():
            outputs = self.model.generate(
                **inputs,
                max_new_tokens=100,
                temperature=0.7,
                do_sample=True,
                top_p=0.9,
                pad_token_id=self.tokenizer.eos_token_id
            )
        
        response = self.tokenizer.decode(outputs[0], skip_special_tokens=True)
        student_response = response.replace(input_prompt, "").strip()
        
        return {
            "symptoms": symptoms,
            "sensor_data": sensor_data,
            "student_response": student_response
        }
    
    def test_teacher_model(self, symptoms, sensor_data):
        """Test the teacher model for comparison"""
        teacher_prompt = f"""Patient presents with the following:
Symptoms: {symptoms}
Vital Signs:
- Heart Rate: {sensor_data['heart_rate']} bpm
- Body Temperature: {sensor_data['temperature']}°C
- Stress Level: {sensor_data['stress_level']}/10
- Blood Pressure: {sensor_data['systolic_bp']}/{sensor_data['diastolic_bp']} mmHg

Based on these symptoms and vital signs, provide comprehensive diagnosis and treatment recommendations:"""
        
        try:
            result = self.teacher_pipe(
                teacher_prompt,
                max_new_tokens=120,
                temperature=0.7,
                do_sample=True,
                top_p=0.9
            )
            
            teacher_response = result[0]['generated_text']
            teacher_label = teacher_response.replace(teacher_prompt, "").strip()
            
            if not teacher_label:
                teacher_label = "Recommend immediate medical consultation for professional evaluation and treatment based on symptoms and vital signs."
            
            return teacher_label
            
        except Exception as e:
            return f"Teacher model error: {e}"
    
    def run_comprehensive_test(self):
        """Run comprehensive test with various medical scenarios"""
        test_cases = [
            # Cardiovascular cases
            "chest pain, shortness of breath, left arm pain",
            "hypertension, headache, dizziness",
            "palpitations, anxiety, rapid heartbeat",
            
            # Respiratory cases
            "cough, fever, difficulty breathing",
            "asthma attack, wheezing, chest tightness",
            "pneumonia symptoms, high fever, chills",
            
            # Digestive cases
            "severe abdominal pain, nausea, vomiting",
            "food poisoning, diarrhea, stomach cramps",
            "gallbladder pain, right upper abdominal pain",
            
            # Neurological cases
            "severe headache, neck stiffness, fever",
            "stroke symptoms, facial drooping, arm weakness",
            "seizure, temporary loss of consciousness",
            
            # Mental health cases
            "panic attack, rapid heartbeat, sweating",
            "depression, fatigue, loss of interest",
            "anxiety, insomnia, irritability",
            
            # Complex cases
            "chest pain, fever, cough, difficulty breathing",
            "abdominal pain, nausea, fever, rapid heartbeat",
            "headache, dizziness, nausea, rapid heartbeat"
        ]
        
        results = []
        
        print("=== Comprehensive Test Results (99-Sample Model) ===")
        print("Testing 18 diverse medical scenarios...")
        print("="*80)
        
        for i, symptoms in enumerate(test_cases, 1):
            print(f"\n--- Test Case {i}: {symptoms} ---")
            
            # Generate sensor data
            sensor_data = self.generate_sensor_data(symptoms)
            print(f"Sensor Data: HR={sensor_data['heart_rate']}, T={sensor_data['temperature']}°C, Stress={sensor_data['stress_level']}, BP={sensor_data['systolic_bp']}/{sensor_data['diastolic_bp']}")
            
            # Test student model
            student_result = self.test_student_model(symptoms, sensor_data)
            print(f"Student Response: {student_result['student_response']}")
            
            # Test teacher model
            teacher_response = self.test_teacher_model(symptoms, sensor_data)
            print(f"Teacher Response: {teacher_response}")
            
            # Store results
            results.append({
                "case": i,
                "symptoms": symptoms,
                "sensor_data": sensor_data,
                "student_response": student_result['student_response'],
                "teacher_response": teacher_response
            })
            
            print("-" * 60)
        
        # Save results
        with open("sensor_enhanced_test_results_99_en.json", "w", encoding="utf-8") as f:
            json.dump(results, f, ensure_ascii=False, indent=2)
        
        print(f"\n✅ Test completed! Results saved to sensor_enhanced_test_results_99_en.json")
        print(f"✅ Tested {len(test_cases)} medical scenarios")
        print(f"✅ Compared student vs teacher model responses")
        
        return results

def main():
    print("=== Sensor-Enhanced Model Testing (99 Samples) ===")
    print("Testing trained student model with sensor-enhanced inputs")
    print("Comparing with teacher model (MedGemma-27B)")
    print("="*80)
    
    # Create tester
    tester = TestSensorEnhancedModel99()
    
    # Run comprehensive test
    results = tester.run_comprehensive_test()
    
    print("\n=== Test Summary ===")
    print("✅ Successfully tested 18 medical scenarios")
    print("✅ Generated realistic sensor data for each case")
    print("✅ Compared student vs teacher model performance")
    print("✅ Results saved for analysis")

if __name__ == "__main__":
    main() 