from transformers import pipeline
import torch

def test_medgemma_sensor_knowledge():
    """Test MedGemma's understanding of sensor data ranges and medical implications"""
    
    print("=== Testing MedGemma's Sensor Data Medical Knowledge ===")
    print("Loading MedGemma-27B model...")
    
    # Load MedGemma model
    teacher_pipe = pipeline(
        "text-generation",
        model="unsloth/medgemma-27b-text-it-bnb-4bit",
        device_map="auto",
        trust_remote_code=True,
        torch_dtype=torch.bfloat16,
    )
    
    # Test cases with different sensor value ranges
    test_cases = [
        {
            "name": "Normal Vital Signs",
            "prompt": """Patient presents with:
- Heart Rate: 70 bpm
- Body Temperature: 36.5°C
- Stress Level: 3/10
- Blood Pressure: 120/80 mmHg

What do these vital signs indicate about the patient's condition?"""
        },
        {
            "name": "High Fever",
            "prompt": """Patient presents with:
- Heart Rate: 110 bpm
- Body Temperature: 39.5°C
- Stress Level: 8/10
- Blood Pressure: 135/85 mmHg

What do these vital signs indicate about the patient's condition?"""
        },
        {
            "name": "Hypothermia",
            "prompt": """Patient presents with:
- Heart Rate: 55 bpm
- Body Temperature: 35.0°C
- Stress Level: 4/10
- Blood Pressure: 100/60 mmHg

What do these vital signs indicate about the patient's condition?"""
        },
        {
            "name": "Severe Hypertension",
            "prompt": """Patient presents with:
- Heart Rate: 95 bpm
- Body Temperature: 36.8°C
- Stress Level: 9/10
- Blood Pressure: 190/120 mmHg

What do these vital signs indicate about the patient's condition?"""
        },
        {
            "name": "Tachycardia with Normal Temperature",
            "prompt": """Patient presents with:
- Heart Rate: 140 bpm
- Body Temperature: 36.6°C
- Stress Level: 10/10
- Blood Pressure: 150/95 mmHg

What do these vital signs indicate about the patient's condition?"""
        },
        {
            "name": "Bradycardia",
            "prompt": """Patient presents with:
- Heart Rate: 45 bpm
- Body Temperature: 36.4°C
- Stress Level: 2/10
- Blood Pressure: 110/70 mmHg

What do these vital signs indicate about the patient's condition?"""
        }
    ]
    
    print("\n" + "="*80)
    
    for i, case in enumerate(test_cases, 1):
        print(f"\n【Test Case {i}: {case['name']}】")
        print(f"Prompt: {case['prompt']}")
        print("\nMedGemma Response:")
        
        try:
            result = teacher_pipe(
                case['prompt'],
                max_new_tokens=150,
                temperature=0.7,
                do_sample=True,
                top_p=0.9
            )
            
            response = result[0]['generated_text']
            answer = response.replace(case['prompt'], "").strip()
            print(answer)
            
        except Exception as e:
            print(f"Error: {e}")
        
        print("-" * 80)

def test_sensor_value_interpretation():
    """Test how MedGemma interprets specific sensor values"""
    
    print("\n=== Testing Specific Sensor Value Interpretations ===")
    
    # Load MedGemma model
    teacher_pipe = pipeline(
        "text-generation",
        model="unsloth/medgemma-27b-text-it-bnb-4bit",
        device_map="auto",
        trust_remote_code=True,
        torch_dtype=torch.bfloat16,
    )
    
    # Test specific medical knowledge
    medical_questions = [
        "What does a body temperature of 38.5°C indicate in a patient?",
        "What are the clinical implications of a heart rate of 130 bpm?",
        "What does a blood pressure reading of 180/110 mmHg suggest?",
        "What medical conditions are associated with a heart rate of 50 bpm?",
        "What does a stress level of 9/10 indicate in clinical assessment?",
        "What are normal ranges for vital signs in adults?"
    ]
    
    for i, question in enumerate(medical_questions, 1):
        print(f"\n【Question {i}】: {question}")
        print("MedGemma Response:")
        
        try:
            result = teacher_pipe(
                question,
                max_new_tokens=100,
                temperature=0.5,
                do_sample=True,
                top_p=0.9
            )
            
            response = result[0]['generated_text']
            answer = response.replace(question, "").strip()
            print(answer)
            
        except Exception as e:
            print(f"Error: {e}")
        
        print("-" * 60)

def main():
    print("Testing MedGemma's Medical Knowledge of Sensor Data")
    print("This will help understand how the model interprets vital signs")
    print("="*80)
    
    # Test 1: Comprehensive vital signs analysis
    test_medgemma_sensor_knowledge()
    
    # Test 2: Specific sensor value interpretations
    test_sensor_value_interpretation()
    
    print("\n=== Analysis Complete ===")
    print("MedGemma demonstrates medical knowledge from its pretraining on:")
    print("1. Medical textbooks and clinical guidelines")
    print("2. Research papers on vital signs and disease correlation")
    print("3. Clinical case studies and patient records")
    print("4. Medical reference materials and diagnostic criteria")

if __name__ == "__main__":
    main() 