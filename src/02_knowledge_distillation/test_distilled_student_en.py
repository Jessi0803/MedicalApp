import torch
from transformers import AutoTokenizer, AutoModelForCausalLM

class DistilledStudentTester:
    def __init__(self, model_path="./stable_student_model_en"):
        print(f"Loading distilled student model from {model_path}...")
        
        self.tokenizer = AutoTokenizer.from_pretrained(model_path)
        self.model = AutoModelForCausalLM.from_pretrained(
            model_path,
            torch_dtype=torch.bfloat16,
            device_map="auto"
        )
        self.model.eval()
        
        if self.tokenizer.pad_token is None:
            self.tokenizer.pad_token = self.tokenizer.eos_token
        
        print("Model loaded successfully!")
    
    def generate_response(self, symptoms, max_new_tokens=150):
        """Generate medical advice from student model"""
        prompt = f"Symptoms: {symptoms}\nTreatment:"
        
        inputs = self.tokenizer(
            prompt,
            return_tensors="pt",
            truncation=True,
            max_length=200
        )
        
        device = next(self.model.parameters()).device
        inputs = {k: v.to(device) for k, v in inputs.items()}
        
        with torch.no_grad():
            try:
                outputs = self.model.generate(
                    **inputs,
                    max_new_tokens=max_new_tokens,
                    temperature=0.7,
                    do_sample=True,
                    top_p=0.9,
                    pad_token_id=self.tokenizer.eos_token_id
                )
                
                response = self.tokenizer.decode(outputs[0], skip_special_tokens=True)
                response = response.replace(prompt, "").strip()
                return response
                
            except Exception as e:
                print(f"Error during generation: {e}")
                return "Generation failed"
    
    def test_cases(self):
        """Test multiple medical cases"""
        test_symptoms = [
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
            "hypertension, dizziness, rapid heartbeat",
            "diabetes symptoms, frequent urination, thirst",
            "asthma, shortness of breath, chest tightness"
        ]
        
        print("=== Distilled Student Model Test Results ===")
        print("=" * 60)
        
        for i, symptoms in enumerate(test_symptoms, 1):
            print(f"\nTest Case {i}: {symptoms}")
            print("-" * 50)
            
            response = self.generate_response(symptoms)
            print(f"Student Model Recommendation: {response}")
            print("=" * 60)
    
    def interactive_test(self):
        """Interactive testing mode"""
        print("\n=== Interactive Testing Mode ===")
        print("Enter symptoms, type 'quit' to exit")
        
        while True:
            symptoms = input("\nPlease enter symptoms: ").strip()
            
            if symptoms.lower() == 'quit':
                print("Exiting interactive testing mode")
                break
            
            if not symptoms:
                print("Please enter valid symptoms")
                continue
            
            print("Generating recommendation...")
            response = self.generate_response(symptoms)
            print(f"\nStudent Model Recommendation: {response}")
            print("-" * 50)

def main():
    print("=== Distilled Student Model Tester ===")
    
    try:
        tester = DistilledStudentTester()
        
        # Batch testing
        tester.test_cases()
        
        # Interactive testing (optional)
        user_input = input("\nWould you like to perform interactive testing? (y/n): ").strip().lower()
        if user_input == 'y':
            tester.interactive_test()
        
    except Exception as e:
        print(f"Error during testing: {e}")

if __name__ == "__main__":
    main() 