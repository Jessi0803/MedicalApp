# Medical Knowledge Distillation Project

A comprehensive medical knowledge distillation system that enhances small language models (QwQ-0.5B) with sensor data interpretation capabilities by learning from large medical models (MedGemma-27B).

## 🏥 Project Overview

This project implements sensor-enhanced knowledge distillation for medical diagnosis and treatment recommendations. The system combines:
- **Symptoms** from patients
- **Vital signs** (heart rate, temperature, stress level, blood pressure)
- **Medical reasoning** from large language models
- **Distilled knowledge** into smaller, efficient models

## 📁 Project Structure

```
medical-knowledge-distillation/
├── README.md                           # This file
├── requirements.txt                    # Python dependencies
├── install.sh                         # Automated installation script
├── .gitignore                         # Git ignore rules
├── demo/                              # Interactive demo scripts
│   ├── demo_sensor_enhanced_99_en.py  # 99-sample interactive demo (local model)
│   └── demo_with_download.py          # Smart demo with auto-download from Hugging Face
└── src/                               # Source code and training scripts
    └── 03_sensor_enhanced/
        ├── sensor_enhanced_distillation_99_en.py      # 99-sample training
        └── test_sensor_enhanced_99_en.py              # Automated testing script
```

## 🚀 Quick Start Guide

### 📋 Prerequisites

#### Hardware Requirements
- **GPU**: NVIDIA GPU with 24GB+ VRAM (recommended)
- **RAM**: 32GB+ system memory
- **Storage**: 50GB+ free space for model downloads

#### Software Requirements
- Python 3.8 or higher
- CUDA 11.8+ (for GPU support)
- Git

### 🔧 Installation Steps

#### 1. Clone the Repository
```bash
git clone https://github.com/Jessi0803/MedicalApp.git
cd MedicalApp
```

#### 2. Run the Installation Script (Recommended)
```bash
chmod +x install.sh
./install.sh
```

**Alternative: Manual Installation**
```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

#### 3. Activate Virtual Environment
```bash
source venv/bin/activate
```

### 🎯 Running the Demo

#### Option 1: Smart Demo with Auto-Download
```bash
cd demo
python3 demo_with_download.py
```

**What happens:**
1. **Local Model Check**: First checks if you have a locally trained model
2. **Auto-Download**: If no local model, automatically downloads from Hugging Face (`Jie-Si/medical-student-model-99`)
3. **Ready to Use**: Starts the medical diagnosis system immediately

#### Option 2: Local Demo (For Users with Trained Models)
```bash
cd demo
python3 demo_sensor_enhanced_99_en.py
```

**Requirements:**
- You must have a locally trained model in `src/03_sensor_enhanced/sensor_enhanced_student_model_99_en/`
- Run training first if you don't have a local model

#### What to Expect
1. **First Run**: The system will download models (~14GB teacher + ~1GB student) - this may take 10-20 minutes
2. **Interactive Interface**: Enter symptoms and get AI-powered medical advice
3. **AI Responses**: Get medical recommendations from the trained student model
4. **Auto-save**: All consultations are automatically saved to JSON files

#### Example Usage
```
Enter symptoms (or type 'quit' to exit): chest pain, shortness of breath

Symptoms: chest pain, shortness of breath
Vital Signs:
  Heart Rate: 95 bpm
  Temperature: 37.8°C
  Stress Level: 7/10
  Blood Pressure: 140/90 mmHg

Student Model Diagnosis:
------------------------------
Based on the symptoms and vital signs, this appears to be...
```

### 🧠 Training Your Own Model

cd src/03_sensor_enhanced
python3 sensor_enhanced_distillation_99_en.py
```

**Training Process:**
1. Generates medical scenarios across multiple domains
2. Creates realistic sensor data for each scenario
3. Gets teacher responses from MedGemma-27B
4. Trains student model using knowledge distillation
5. Saves trained model for future use

## 🧠 Model Architecture

### Teacher Model: MedGemma-27B (4-bit quantized)
- **Purpose**: Large medical language model for generating high-quality medical responses
- **Input**: Symptoms + Vital signs (heart rate, temperature, stress, blood pressure)
- **Output**: Comprehensive diagnosis and treatment recommendations
- **Loading**: 4-bit quantization for memory efficiency
- **Size**: ~14GB (4-bit quantized)

### Student Model: QwQ-0.5B
- **Purpose**: Small, efficient model for deployment
- **Training**: Knowledge distillation from MedGemma-27B
- **Capability**: Medical reasoning with sensor data interpretation
- **Size**: ~0.5B parameters (much smaller than teacher)
- **Available**: Pre-trained model on Hugging Face (`Jie-Si/medical-student-model-99`)

### Pre-trained Model Access
- **Hugging Face**: `Jie-Si/medical-student-model-99`
- **Training Data**: 99 comprehensive medical scenarios
- **Auto-Download**: Automatically downloaded by `demo_with_download.py`
- **No Training Required**: Ready to use out-of-the-box

## 📊 Training Data Options

### 99-Sample Version (Standard)
- **Cardiovascular**: 15 scenarios
- **Respiratory**: 12 scenarios
- **Digestive**: 12 scenarios
- **Neurological**: 12 scenarios
- **Musculoskeletal**: 10 scenarios
- **Mental Health**: 8 scenarios
- **Dermatological**: 6 scenarios
- **Endocrine**: 6 scenarios
- **Genitourinary**: 5 scenarios
- **Reproductive**: 5 scenarios
- **Immune**: 4 scenarios
- **Training Time**: ~2-3 hours


## 🔧 Sensor Data Generation

The system automatically generates realistic vital signs based on symptoms:

```python
# Example sensor data generation
symptoms = "chest pain, fever, rapid heartbeat"
sensor_data = {
    "heart_rate": 95,        # Elevated due to fever and chest pain
    "temperature": 38.2,     # Fever
    "stress_level": 6,       # Elevated due to symptoms
    "systolic_bp": 135,      # Slightly elevated
    "diastolic_bp": 85       # Normal
}
```

## 📝 Model Input Data Format

### Teacher Model Input Format
```
Patient presents with the following:
Symptoms: {symptoms}
Vital Signs:
- Heart Rate: {heart_rate} bpm
- Body Temperature: {temperature}°C
- Stress Level: {stress_level}/10
- Blood Pressure: {systolic_bp}/{diastolic_bp} mmHg

Based on these symptoms and vital signs, provide comprehensive diagnosis and treatment recommendations:
```

### Student Model Input Format
```
Symptoms: {symptoms}
Vital Signs:
- Heart Rate: {heart_rate} bpm
- Body Temperature: {temperature}°C  
- Stress Level: {stress_level}/10
- Blood Pressure: {systolic_bp}/{diastolic_bp} mmHg
Treatment Plan:
```

### Input Data Structure
```python
{
    "symptoms": "chest pain, shortness of breath",
    "sensor_data": {
        "heart_rate": 95,        # bpm (40-180 range)
        "temperature": 37.8,     # °C (35.0-42.0 range)
        "stress_level": 7,       # 1-10 scale
        "systolic_bp": 140,      # mmHg (80-200 range)
        "diastolic_bp": 90       # mmHg (50-120 range)
    }
}
```

### Training Data Format
```python
{
    "student_input": "Symptoms: chest pain...\nTreatment Plan:",
    "teacher_label": "Based on the symptoms and vital signs...",
    "symptoms": "chest pain, shortness of breath",
    "sensor_data": {...}
}
```

## 📈 Training Process

### 1. Data Preparation
- Generate symptom combinations across medical domains
- Create realistic sensor data for each scenario
- Format prompts for teacher and student models

### 2. Teacher Label Generation
- Use MedGemma-27B to generate responses for each scenario
- Include sensor data interpretation in prompts
- Extract and clean teacher responses

### 3. Student Training
- Train QwQ-0.5B using teacher responses as targets
- Implement knowledge distillation loss
- Save trained model and tokenizer

### 4. Evaluation
- Test student model on new scenarios
- Compare with teacher model responses
- Save consultation logs for analysis


## 📋 Usage Examples

### Running Interactive Demo
```bash
# Navigate to demo folder
cd demo

# Run the interactive demo
python3 demo_sensor_enhanced_99_en.py

# Follow the prompts:
# Symptoms: chest pain, shortness of breath
# Heart Rate: 95 (or press Enter for auto-generated)
# Temperature: 37.8 (or press Enter for auto-generated)
# Stress Level: 7 (or press Enter for auto-generated)
# Systolic BP: 140 (or press Enter for auto-generated)
# Diastolic BP: 90 (or press Enter for auto-generated)
```

### Training New Model
```bash
# Navigate to training folder
cd src/03_sensor_enhanced

# Run the training script
python3 sensor_enhanced_distillation_99_en.py

# This will:
# 1. Generate 99 medical scenarios
# 2. Create sensor data for each
# 3. Get teacher responses from MedGemma-27B
# 4. Train student model for 8 epochs
# 5. Save model to sensor_enhanced_student_model_99_en/
```

## 🔍 Testing and Evaluation

### Automated Testing
```bash
cd src/03_sensor_enhanced
python3 test_sensor_enhanced_99_en.py
```

### Manual Testing
- Use interactive demos for real-time testing
- Compare student vs teacher responses
- Test edge cases and unusual symptoms

## 🛠️ Technical Requirements

### Software Dependencies
- Python 3.8+
- PyTorch 2.0+
- Transformers (Hugging Face)
- Datasets
- Accelerate
- bitsandbytes (for 4-bit quantization)
- torch_dtype=bfloat16 support
- device_map="auto" support for automatic GPU memory management

### Hardware Requirements
- **Training**: GPU with 24GB+ VRAM (for MedGemma-27B teacher model + student training)
- **Inference**: GPU with 16GB+ VRAM (for both teacher and student models simultaneously)
- **Memory**: 32GB+ RAM recommended
- **Storage**: 50GB+ free space for model downloads and training
- **Note**: Both teacher and student models are loaded simultaneously during training and inference

### Model Downloads
- **Teacher Model**: `unsloth/medgemma-27b-text-it-bnb-4bit` (~27B parameters, 4-bit quantized)
- **Student Model**: `kz919/QwQ-0.5B-Distilled` (~0.5B parameters)
- **Model Sizes**: Teacher ~14GB (4-bit), Student ~1GB
- **Memory Usage**: Both models loaded simultaneously during training and inference



## 📝 File Descriptions

### Demo Files
- `demo/demo_sensor_enhanced_99_en.py`: 99-sample interactive demo
- `demo/demo_with_download.py`: Smart demo with auto-download

### Training Files
- `src/03_sensor_enhanced/sensor_enhanced_distillation_99_en.py`: 99-sample training
- `src/03_sensor_enhanced/test_sensor_enhanced_99_en.py`: Automated testing script

### Configuration Files
- `requirements.txt`: Python dependencies
- `install.sh`: Automated installation script
- `.gitignore`: Git ignore rules

### Output Files
- `src/03_sensor_enhanced/sensor_enhanced_student_model_99_en/`: Trained 99-sample model
- `interactive_consultations_99_en.json`: Demo consultation logs


