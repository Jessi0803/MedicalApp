import torch
from transformers import AutoTokenizer, AutoModelForCausalLM
from transformers.pipelines import pipeline
import json
import random

class InteractiveSensorEnhancedDemo99:
    def __init__(self):
        print("Loading trained sensor-enhanced student model...")
        
        # Load trained student model
        import os
        # Get the current directory and construct the model path
        current_dir = os.path.dirname(os.path.abspath(__file__))
        project_root = os.path.dirname(current_dir)
        self.model_path = os.path.join(project_root, "src", "03_sensor_enhanced", "sensor_enhanced_student_model_99_en")
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
    
    def get_user_input(self):
        """Get symptoms and sensor data from user"""
        print("\n" + "="*60)
        print("🏥 INTERACTIVE MEDICAL CONSULTATION SYSTEM")
        print("="*60)
        
        # Get symptoms
        print("\n📋 Please describe the symptoms (e.g., 'chest pain, shortness of breath'):")
        symptoms = input("Symptoms: ").strip()
        
        if not symptoms:
            print("❌ No symptoms provided. Using default symptoms.")
            symptoms = "fever, headache, fatigue"
        
        # Get sensor data
        print("\n📊 Please enter the vital signs (press Enter to use auto-generated values):")
        
        try:
            heart_rate_input = input("Heart Rate (bpm) [auto]: ").strip()
            heart_rate = int(heart_rate_input) if heart_rate_input else None
            
            temperature_input = input("Body Temperature (°C) [auto]: ").strip()
            temperature = float(temperature_input) if temperature_input else None
            
            stress_input = input("Stress Level (1-10) [auto]: ").strip()
            stress_level = int(stress_input) if stress_input else None
            
            systolic_input = input("Systolic BP (mmHg) [auto]: ").strip()
            systolic_bp = int(systolic_input) if systolic_input else None
            
            diastolic_input = input("Diastolic BP (mmHg) [auto]: ").strip()
            diastolic_bp = int(diastolic_input) if diastolic_input else None
            
        except ValueError:
            print("❌ Invalid input. Using auto-generated values.")
            heart_rate = temperature = stress_level = systolic_bp = diastolic_bp = None
        
        # Generate sensor data if not provided
        if any(x is None for x in [heart_rate, temperature, stress_level, systolic_bp, diastolic_bp]):
            sensor_data = self.generate_sensor_data(symptoms)
            print(f"\n🔄 Auto-generated sensor data based on symptoms:")
        else:
            sensor_data = {
                "heart_rate": heart_rate,
                "temperature": temperature,
                "stress_level": stress_level,
                "systolic_bp": systolic_bp,
                "diastolic_bp": diastolic_bp
            }
            print(f"\n✅ Using provided sensor data:")
        
        print(f"   Heart Rate: {sensor_data['heart_rate']} bpm")
        print(f"   Temperature: {sensor_data['temperature']}°C")
        print(f"   Stress Level: {sensor_data['stress_level']}/10")
        print(f"   Blood Pressure: {sensor_data['systolic_bp']}/{sensor_data['diastolic_bp']} mmHg")
        
        return symptoms, sensor_data
    
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
    
    def test_student_model(self, symptoms, sensor_data):
        """Test the trained student model"""
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
        
        return student_response
    
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
    
    def display_results(self, symptoms, sensor_data, student_response, teacher_response):
        """Display the consultation results"""
        print("\n" + "="*80)
        print("🏥 MEDICAL CONSULTATION RESULTS")
        print("="*80)
        
        print(f"\n📋 Patient Symptoms: {symptoms}")
        print(f"📊 Vital Signs:")
        print(f"   • Heart Rate: {sensor_data['heart_rate']} bpm")
        print(f"   • Body Temperature: {sensor_data['temperature']}°C")
        print(f"   • Stress Level: {sensor_data['stress_level']}/10")
        print(f"   • Blood Pressure: {sensor_data['systolic_bp']}/{sensor_data['diastolic_bp']} mmHg")
        
        print(f"\n🤖 Student Model (QwQ-0.5B) Response:")
        print(f"   {student_response}")
        
        print(f"\n👨‍⚕️ Teacher Model (MedGemma-27B) Response:")
        print(f"   {teacher_response}")
        
        print("\n" + "="*80)
    
    def save_consultation(self, symptoms, sensor_data, student_response, teacher_response):
        """Save consultation to file"""
        from datetime import datetime
        consultation = {
            "timestamp": str(datetime.now()),
            "symptoms": symptoms,
            "sensor_data": sensor_data,
            "student_response": student_response,
            "teacher_response": teacher_response
        }
        
        try:
            # Load existing consultations
            try:
                with open("interactive_consultations_99_en.json", "r", encoding="utf-8") as f:
                    consultations = json.load(f)
            except FileNotFoundError:
                consultations = []
            
            # Add new consultation
            consultations.append(consultation)
            
            # Save updated consultations
            with open("interactive_consultations_99_en.json", "w", encoding="utf-8") as f:
                json.dump(consultations, f, ensure_ascii=False, indent=2)
            
            print("💾 Consultation saved to interactive_consultations_99_en.json")
            
        except Exception as e:
            print(f"❌ Error saving consultation: {e}")
    
    def run_interactive_demo(self):
        """Run interactive demonstration"""
        print("🎯 INTERACTIVE SENSOR-ENHANCED MEDICAL CONSULTATION")
        print("This demo allows you to input symptoms and vital signs")
        print("The system will provide medical recommendations using both models")
        print("="*80)
        
        while True:
            try:
                # Get user input
                symptoms, sensor_data = self.get_user_input()
                
                # Generate responses
                print("\n🔄 Generating medical recommendations...")
                student_response = self.test_student_model(symptoms, sensor_data)
                teacher_response = self.test_teacher_model(symptoms, sensor_data)
                
                # Display results
                self.display_results(symptoms, sensor_data, student_response, teacher_response)
                
                # Save consultation
                self.save_consultation(symptoms, sensor_data, student_response, teacher_response)
                
                # Ask if user wants to continue
                print("\n❓ Would you like to try another consultation?")
                continue_input = input("Enter 'y' to continue, any other key to exit: ").strip().lower()
                
                if continue_input != 'y':
                    print("\n👋 Thank you for using the Interactive Medical Consultation System!")
                    print("💾 All consultations have been saved for future reference.")
                    break
                
            except KeyboardInterrupt:
                print("\n\n👋 Demo interrupted by user. Goodbye!")
                break
            except Exception as e:
                print(f"\n❌ Error during consultation: {e}")
                print("Please try again.")

def main():
    print("=== Interactive Sensor-Enhanced Medical Consultation (99-Sample Model) ===")
    print("Teacher Model: MedGemma-27B (Symptoms + Vital Signs)")
    print("Student Model: QwQ-0.5B (Trained on 99 scenarios)")
    print("="*80)
    
    # Create interactive demo
    demo = InteractiveSensorEnhancedDemo99()
    
    # Run interactive demo
    demo.run_interactive_demo()

if __name__ == "__main__":
    main() 