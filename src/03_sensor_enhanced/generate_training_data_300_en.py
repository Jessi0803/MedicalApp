#!/usr/bin/env python3
"""
Generate 300 comprehensive sensor-enhanced medical training samples
"""

import json
import random
from datetime import datetime

def generate_sensor_data(symptoms, severity="moderate"):
    """Generate realistic sensor data based on symptoms"""
    base_hr = 75
    base_temp = 37.0
    base_stress = 3
    base_systolic = 120
    base_diastolic = 80
    
    # Adjust based on symptoms
    if "chest pain" in symptoms.lower() or "heart" in symptoms.lower():
        base_hr += random.randint(10, 30)
        base_stress += random.randint(2, 4)
        base_systolic += random.randint(10, 25)
    
    if "fever" in symptoms.lower() or "hot" in symptoms.lower():
        base_temp += random.uniform(1.0, 3.0)
        base_hr += random.randint(5, 15)
        base_stress += random.randint(1, 3)
    
    if "anxiety" in symptoms.lower() or "panic" in symptoms.lower():
        base_hr += random.randint(15, 35)
        base_stress += random.randint(3, 5)
        base_systolic += random.randint(5, 15)
    
    if "fatigue" in symptoms.lower() or "tired" in symptoms.lower():
        base_hr -= random.randint(5, 15)
        base_stress += random.randint(1, 2)
    
    if "headache" in symptoms.lower():
        base_stress += random.randint(2, 4)
        base_systolic += random.randint(5, 15)
    
    if "nausea" in symptoms.lower() or "vomiting" in symptoms.lower():
        base_hr += random.randint(5, 15)
        base_stress += random.randint(2, 3)
    
    if "dizzy" in symptoms.lower():
        base_systolic -= random.randint(5, 15)
        base_diastolic -= random.randint(3, 10)
    
    # Add some randomness
    hr_variation = random.randint(-5, 5)
    temp_variation = random.uniform(-0.3, 0.3)
    stress_variation = random.randint(-1, 1)
    bp_variation = random.randint(-5, 5)
    
    return {
        "heart_rate": max(50, min(150, base_hr + hr_variation)),
        "temperature": round(max(35.0, min(42.0, base_temp + temp_variation)), 1),
        "stress_level": max(1, min(10, base_stress + stress_variation)),
        "systolic_bp": max(90, min(180, base_systolic + bp_variation)),
        "diastolic_bp": max(60, min(120, base_diastolic + bp_variation))
    }

def generate_comprehensive_medical_scenarios():
    """Generate 300 comprehensive medical scenarios"""
    scenarios = []
    
    # Cardiovascular conditions (40 scenarios)
    cardiovascular_symptoms = [
        "chest pain, shortness of breath, palpitations",
        "irregular heartbeat, dizziness, fatigue",
        "chest tightness, sweating, nausea",
        "sharp chest pain, difficulty breathing",
        "heart racing, anxiety, trembling",
        "chest pressure, pain radiating to left arm",
        "shortness of breath, swollen ankles, fatigue",
        "chest pain worsening with exercise",
        "palpitations, lightheadedness, chest discomfort",
        "sudden onset chest pain, cold sweats",
        "chest pain, back pain, difficulty swallowing",
        "heart palpitations, anxiety, insomnia",
        "chest pain, coughing, pink frothy sputum",
        "irregular pulse, weakness, confusion",
        "chest pain, jaw pain, shoulder pain",
        "rapid heartbeat, chest flutter, dizziness",
        "chest pain, nausea, vomiting, sweating",
        "shortness of breath, chest pain, leg swelling",
        "chest pain, fatigue, decreased exercise tolerance",
        "heart racing, chest pain, feeling of doom",
        "chest tightness, wheezing, shortness of breath",
        "chest pain, syncope, heart murmur",
        "chest pain, fever, joint pain",
        "chest pain, cough, blood in sputum",
        "chest pain, difficulty lying flat, orthopnea",
        "chest pain, claudication, cold extremities",
        "chest pain, hypertension, headache",
        "chest pain, diabetes, blurred vision",
        "chest pain, family history of heart disease",
        "chest pain, smoking history, chronic cough",
        "chest pain, high cholesterol, obesity",
        "chest pain, stress, work-related anxiety",
        "chest pain, menopause, hot flashes",
        "chest pain, pregnancy, swelling",
        "chest pain, elderly, confusion",
        "chest pain, young athlete, exercise intolerance",
        "chest pain, drug use, paranoia",
        "chest pain, sleep apnea, snoring",
        "chest pain, thyroid disorder, weight changes",
        "chest pain, kidney disease, fluid retention"
    ]
    
    # Respiratory conditions (35 scenarios)
    respiratory_symptoms = [
        "persistent cough, fever, shortness of breath",
        "wheezing, chest tightness, difficulty breathing",
        "cough with blood, weight loss, night sweats",
        "sudden shortness of breath, chest pain, anxiety",
        "chronic cough, sputum production, fatigue",
        "difficulty breathing, barrel chest, pursed lip breathing",
        "cough, fever, chills, muscle aches",
        "shortness of breath, orthopnea, paroxysmal nocturnal dyspnea",
        "cough, chest pain, fever, headache",
        "wheezing, cough, allergic rhinitis, eczema",
        "shortness of breath, cough, weight loss, fatigue",
        "cough, fever, chest pain, rusty sputum",
        "difficulty breathing, stridor, hoarseness",
        "cough, shortness of breath, smoking history",
        "chest pain, cough, pleural friction rub",
        "shortness of breath, cough, occupational exposure",
        "cough, fever, night sweats, weight loss",
        "wheezing, cough, seasonal allergies",
        "shortness of breath, cough, heart failure history",
        "cough, chest pain, recent travel history",
        "difficulty breathing, cough, immunocompromised",
        "cough, fever, sore throat, body aches",
        "shortness of breath, cough, pregnancy",
        "cough, chest pain, recent surgery",
        "wheezing, cough, food allergies",
        "shortness of breath, cough, anxiety disorder",
        "cough, fever, headache, muscle pain",
        "difficulty breathing, cough, chest trauma",
        "cough, shortness of breath, medication side effects",
        "wheezing, cough, exercise-induced symptoms",
        "cough, fever, abdominal pain, diarrhea",
        "shortness of breath, cough, high altitude exposure",
        "cough, chest pain, recent viral illness",
        "difficulty breathing, cough, chemical exposure",
        "cough, fever, lymph node swelling"
    ]
    
    # Gastrointestinal conditions (30 scenarios)
    gastrointestinal_symptoms = [
        "abdominal pain, nausea, vomiting, diarrhea",
        "heartburn, chest pain, difficulty swallowing",
        "abdominal pain, bloating, constipation, gas",
        "nausea, vomiting, fever, right upper quadrant pain",
        "abdominal pain, bloody stools, weight loss",
        "heartburn, regurgitation, chronic cough",
        "abdominal pain, diarrhea, mucus in stool",
        "nausea, vomiting, abdominal distension",
        "abdominal pain, jaundice, dark urine",
        "heartburn, chest pain, hoarseness",
        "abdominal pain, alternating diarrhea and constipation",
        "nausea, vomiting, severe abdominal pain",
        "abdominal pain, fever, chills, rigors",
        "heartburn, difficulty swallowing, weight loss",
        "abdominal pain, rectal bleeding, tenesmus",
        "nausea, vomiting, headache, photophobia",
        "abdominal pain, diarrhea, dehydration",
        "heartburn, chest pain, sleep disturbance",
        "abdominal pain, constipation, bloating",
        "nausea, vomiting, dizziness, weakness",
        "abdominal pain, fever, loss of appetite",
        "heartburn, regurgitation, dental erosion",
        "abdominal pain, diarrhea, arthritis",
        "nausea, vomiting, medication-related",
        "abdominal pain, constipation, hemorrhoids",
        "heartburn, chest pain, pregnancy",
        "abdominal pain, diarrhea, recent antibiotic use",
        "nausea, vomiting, motion sickness",
        "abdominal pain, bloating, food intolerance",
        "heartburn, chest pain, stress-related"
    ]
    
    # Neurological conditions (25 scenarios)
    neurological_symptoms = [
        "severe headache, nausea, vomiting, photophobia",
        "dizziness, vertigo, nausea, hearing loss",
        "headache, fever, neck stiffness, confusion",
        "sudden severe headache, worst headache of life",
        "headache, visual disturbances, nausea",
        "dizziness, weakness, numbness, speech difficulties",
        "headache, scalp tenderness, jaw claudication",
        "dizziness, fainting, palpitations, sweating",
        "headache, personality changes, memory problems",
        "dizziness, balance problems, coordination issues",
        "headache, fever, altered mental status",
        "dizziness, tinnitus, hearing loss, nausea",
        "headache, weakness, sensory changes",
        "dizziness, orthostatic hypotension, falls",
        "headache, seizures, focal neurological deficits",
        "dizziness, medication side effects, polypharmacy",
        "headache, hypertension, vision changes",
        "dizziness, anxiety, panic attacks",
        "headache, sinus congestion, facial pain",
        "dizziness, dehydration, electrolyte imbalance",
        "headache, cluster pattern, unilateral pain",
        "dizziness, vestibular dysfunction, imbalance",
        "headache, tension-type, stress-related",
        "dizziness, cardiac arrhythmia, syncope",
        "headache, migraine, hormonal triggers"
    ]
    
    # Musculoskeletal conditions (25 scenarios)
    musculoskeletal_symptoms = [
        "back pain, muscle spasms, limited mobility",
        "joint pain, swelling, morning stiffness",
        "back pain, sciatica, leg numbness",
        "joint pain, fever, rash, fatigue",
        "back pain, trauma, difficulty walking",
        "joint pain, multiple joints, symmetrical",
        "back pain, chronic, degenerative changes",
        "joint pain, single joint, acute onset",
        "back pain, osteoporosis, compression fracture",
        "joint pain, overuse, repetitive strain",
        "back pain, disc herniation, radiculopathy",
        "joint pain, autoimmune, systemic symptoms",
        "back pain, spinal stenosis, claudication",
        "joint pain, crystal arthropathy, acute",
        "back pain, fibromyalgia, widespread pain",
        "joint pain, septic arthritis, fever",
        "back pain, ankylosing spondylitis, morning stiffness",
        "joint pain, osteoarthritis, weight-bearing joints",
        "back pain, muscle strain, acute injury",
        "joint pain, psoriatic arthritis, skin changes",
        "back pain, spondylolisthesis, instability",
        "joint pain, reactive arthritis, recent infection",
        "back pain, tumor, night pain",
        "joint pain, hemarthrosis, bleeding disorder",
        "back pain, pregnancy, postural changes"
    ]
    
    # Endocrine conditions (20 scenarios)
    endocrine_symptoms = [
        "fatigue, weight gain, cold intolerance, constipation",
        "weight loss, palpitations, heat intolerance, tremor",
        "polyuria, polydipsia, weight loss, fatigue",
        "fatigue, weight gain, depression, dry skin",
        "weight loss, increased appetite, nervousness, sweating",
        "excessive thirst, frequent urination, blurred vision",
        "fatigue, muscle weakness, weight loss, hyperpigmentation",
        "weight gain, purple striae, hypertension, diabetes",
        "fatigue, cold intolerance, weight gain, hair loss",
        "weight loss, heat intolerance, eye problems, goiter",
        "polyuria, polydipsia, polyphagia, weight loss",
        "fatigue, depression, weight gain, menstrual irregularities",
        "weight loss, increased appetite, anxiety, insomnia",
        "excessive thirst, frequent urination, slow healing",
        "fatigue, muscle cramps, salt cravings, hypotension",
        "weight gain, moon face, buffalo hump, mood changes",
        "fatigue, constipation, weight gain, memory problems",
        "weight loss, nervousness, rapid heartbeat, diarrhea",
        "polyuria, polydipsia, ketones, abdominal pain",
        "fatigue, weakness, nausea, electrolyte imbalance"
    ]
    
    # Infectious diseases (25 scenarios)
    infectious_symptoms = [
        "fever, chills, body aches, headache",
        "fever, cough, shortness of breath, fatigue",
        "fever, sore throat, swollen lymph nodes",
        "fever, rash, joint pain, headache",
        "fever, abdominal pain, diarrhea, vomiting",
        "fever, urinary frequency, dysuria, back pain",
        "fever, headache, neck stiffness, photophobia",
        "fever, cough, chest pain, sputum production",
        "fever, skin infection, redness, swelling",
        "fever, ear pain, hearing loss, discharge",
        "fever, eye redness, discharge, photophobia",
        "fever, genital lesions, dysuria, lymphadenopathy",
        "fever, travel history, malaise, myalgia",
        "fever, immunocompromised, opportunistic infection",
        "fever, dental pain, facial swelling",
        "fever, wound infection, purulent drainage",
        "fever, food poisoning, nausea, cramping",
        "fever, tick bite, rash, arthralgia",
        "fever, animal exposure, bite wound",
        "fever, hospital-acquired, antibiotic-resistant",
        "fever, sexually transmitted, urethral discharge",
        "fever, respiratory infection, elderly patient",
        "fever, pediatric, viral syndrome",
        "fever, postoperative, surgical site infection",
        "fever, catheter-related, bloodstream infection"
    ]
    
    # Mental health conditions (20 scenarios)
    mental_health_symptoms = [
        "anxiety, palpitations, sweating, trembling",
        "depression, fatigue, sleep disturbances, appetite changes",
        "panic attacks, chest pain, shortness of breath, dizziness",
        "anxiety, worry, restlessness, muscle tension",
        "depression, hopelessness, worthlessness, suicidal thoughts",
        "panic attacks, agoraphobia, avoidance behavior",
        "anxiety, social situations, fear of judgment",
        "depression, seasonal pattern, low energy",
        "panic attacks, physical symptoms, fear of dying",
        "anxiety, generalized, multiple worries",
        "depression, postpartum, mood swings",
        "panic attacks, nocturnal, sleep disruption",
        "anxiety, health-related, hypochondriasis",
        "depression, bipolar, manic episodes",
        "panic attacks, substance-induced, withdrawal",
        "anxiety, performance-related, situational",
        "depression, chronic, dysthymia",
        "panic attacks, medical condition, thyroid disorder",
        "anxiety, trauma-related, flashbacks",
        "depression, medication-induced, side effects"
    ]
    
    # Dermatological conditions (15 scenarios)
    dermatological_symptoms = [
        "skin rash, itching, redness, swelling",
        "skin lesions, changing mole, irregular borders",
        "skin infection, pustules, fever, lymphadenopathy",
        "skin rash, allergic reaction, hives, angioedema",
        "skin dryness, scaling, eczema, atopic dermatitis",
        "skin rash, psoriasis, plaques, joint pain",
        "skin infection, cellulitis, warmth, erythema",
        "skin rash, contact dermatitis, occupational exposure",
        "skin lesions, viral infection, vesicles",
        "skin rash, drug reaction, fever, eosinophilia",
        "skin infection, fungal, athlete's foot, itching",
        "skin rash, autoimmune, systemic symptoms",
        "skin lesions, bacterial infection, impetigo",
        "skin rash, sun exposure, photosensitivity",
        "skin infection, parasitic, scabies, itching"
    ]
    
    # Genitourinary conditions (15 scenarios)
    genitourinary_symptoms = [
        "urinary frequency, urgency, dysuria, suprapubic pain",
        "flank pain, hematuria, nausea, vomiting",
        "urinary incontinence, frequency, nocturia",
        "dysuria, urethral discharge, pelvic pain",
        "oliguria, edema, hypertension, proteinuria",
        "urinary retention, difficulty starting stream",
        "hematuria, flank pain, weight loss",
        "dysuria, frequency, pregnancy, bacteriuria",
        "urinary frequency, polyuria, polydipsia",
        "pelvic pain, dysmenorrhea, heavy bleeding",
        "urinary incontinence, stress-related, coughing",
        "dysuria, frequency, elderly, confusion",
        "flank pain, fever, pyuria, bacteriuria",
        "urinary frequency, nocturia, prostate enlargement",
        "pelvic pain, dyspareunia, irregular bleeding"
    ]
    
    # Combine all symptom categories
    all_symptoms = (cardiovascular_symptoms + respiratory_symptoms + 
                   gastrointestinal_symptoms + neurological_symptoms + 
                   musculoskeletal_symptoms + endocrine_symptoms + 
                   infectious_symptoms + mental_health_symptoms + 
                   dermatological_symptoms + genitourinary_symptoms)
    
    # Generate 300 scenarios
    for i, symptoms in enumerate(all_symptoms):
        sensor_data = generate_sensor_data(symptoms)
        
        student_input = f"""Symptoms: {symptoms}
Vital Signs:
- Heart Rate: {sensor_data['heart_rate']} bpm
- Body Temperature: {sensor_data['temperature']}°C
- Stress Level: {sensor_data['stress_level']}/10
- Blood Pressure: {sensor_data['systolic_bp']}/{sensor_data['diastolic_bp']} mmHg
Treatment Plan:"""
        
        scenario = {
            "id": i + 1,
            "symptoms": symptoms,
            "sensor_data": sensor_data,
            "student_input": student_input,
            "category": get_category(symptoms),
            "timestamp": datetime.now().isoformat()
        }
        
        scenarios.append(scenario)
    
    return scenarios

def get_category(symptoms):
    """Determine the medical category based on symptoms"""
    symptoms_lower = symptoms.lower()
    
    if any(word in symptoms_lower for word in ["chest pain", "heart", "palpitations", "cardiac"]):
        return "cardiovascular"
    elif any(word in symptoms_lower for word in ["cough", "breathing", "shortness", "wheez"]):
        return "respiratory"
    elif any(word in symptoms_lower for word in ["abdominal", "nausea", "vomiting", "diarrhea"]):
        return "gastrointestinal"
    elif any(word in symptoms_lower for word in ["headache", "dizziness", "neurological"]):
        return "neurological"
    elif any(word in symptoms_lower for word in ["joint", "back pain", "muscle"]):
        return "musculoskeletal"
    elif any(word in symptoms_lower for word in ["weight", "fatigue", "thyroid"]):
        return "endocrine"
    elif any(word in symptoms_lower for word in ["fever", "infection", "chills"]):
        return "infectious"
    elif any(word in symptoms_lower for word in ["anxiety", "depression", "panic"]):
        return "mental_health"
    elif any(word in symptoms_lower for word in ["skin", "rash", "lesion"]):
        return "dermatological"
    elif any(word in symptoms_lower for word in ["urinary", "dysuria", "hematuria"]):
        return "genitourinary"
    else:
        return "general"

def main():
    """Generate and save 300 training scenarios"""
    print("🏥 Generating 300 Sensor-Enhanced Medical Training Scenarios")
    print("=" * 60)
    
    scenarios = generate_comprehensive_medical_scenarios()
    
    # Save to file
    output_file = "sensor_enhanced_training_data_300_en.json"
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump(scenarios, f, ensure_ascii=False, indent=2)
    
    print(f"✅ Generated {len(scenarios)} training scenarios")
    print(f"📁 Saved to: {output_file}")
    
    # Print statistics
    categories = {}
    for scenario in scenarios:
        category = scenario['category']
        categories[category] = categories.get(category, 0) + 1
    
    print("\n📊 Category Distribution:")
    for category, count in sorted(categories.items()):
        print(f"  {category}: {count} scenarios")
    
    print(f"\n🎯 Total scenarios: {len(scenarios)}")
    print("Ready for knowledge distillation training!")

if __name__ == "__main__":
    main() 