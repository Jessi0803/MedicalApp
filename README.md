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
│   └── demo_sensor_enhanced_99_en.py # 99-sample interactive demo
└── src/                               # Source code and training scripts
    └── 03_sensor_enhanced/
        ├── sensor_enhanced_distillation_99_en.py
        └── test_sensor_enhanced_99_en.py
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
git clone https://github.com/yourusername/medical-knowledge-distillation.git
cd medical-knowledge-distillation
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

#### Quick Start (Recommended)
```bash
cd demo
python3 demo_sensor_enhanced_99_en.py
```

#### What to Expect
1. **First Run**: The system will download the teacher model (~14GB) - this may take 10-20 minutes
2. **Interactive Interface**: Enter symptoms and sensor data
3. **AI Responses**: Get medical advice from both teacher and student models
4. **Auto-save**: All consultations are automatically saved to JSON files

#### Example Usage
```
Symptoms: chest pain, shortness of breath
Heart Rate: 95 (or press Enter for auto-generated)
Temperature: 37.8 (or press Enter for auto-generated)
Stress Level: 7 (or press Enter for auto-generated)
Systolic BP: 140 (or press Enter for auto-generated)
Diastolic BP: 90 (or press Enter for auto-generated)
```

### 🧠 Training Your Own Model

#### Run Knowledge Distillation Training
```bash
cd src/03_sensor_enhanced
python3 sensor_enhanced_distillation_99_en.py
```

**Training Process:**
1. Generates 99 medical scenarios
2. Creates realistic sensor data for each scenario
3. Gets teacher responses from MedGemma-27B
4. Trains student model for 8 epochs
5. Saves trained model to `sensor_enhanced_student_model_99_en/`

## 🧠 Model Architecture

### Teacher Model: MedGemma-27B
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
- **Memory Usage**: Both models loaded simultaneously during inference

## 📊 Training Data

### 99-Sample Version (Comprehensive)
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

## 🎯 Interactive Demo Features

### Input Options
- **Manual symptom entry**: Free text description
- **Manual sensor data**: Enter specific vital signs
- **Auto-generated sensors**: System generates based on symptoms

### Output Comparison
- **Student model response**: QwQ-0.5B recommendations
- **Teacher model response**: MedGemma-27B recommendations
- **Side-by-side comparison**: Easy to compare quality

### Data Logging
- **Automatic saving**: All consultations saved to JSON
- **Timestamp tracking**: When each consultation occurred
- **Complete context**: Symptoms, sensors, and both model responses

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

## 🛠️ Troubleshooting

### Common Issues

**1. CUDA Out of Memory**
```
RuntimeError: CUDA out of memory
```
**Solution**: Ensure you have 24GB+ VRAM or reduce model precision

**2. Model Download Fails**
```
Error downloading model from Hugging Face
```
**Solution**: Check internet connection and try again

**3. Import Errors**
```
ModuleNotFoundError: No module named 'transformers'
```
**Solution**: Activate virtual environment and reinstall requirements

**4. Permission Denied**
```
Permission denied: install.sh
```
**Solution**: Run `chmod +x install.sh` before executing

### Getting Help

1. Ensure all hardware requirements are met
2. Verify Python 3.8+ is installed
3. Make sure you have sufficient disk space and GPU memory
4. Check the installation logs for specific error messages

## 🔄 Customization

### Adding New Medical Domains
1. Add symptom combinations to training data
2. Update sensor data generation logic
3. Retrain model with expanded dataset

### Supporting New Languages
1. Translate prompts and responses
2. Update tokenizer for target language
3. Retrain with translated data

### Custom Sensor Types
1. Modify sensor data generation function
2. Update input/output formats
3. Retrain with new sensor combinations

## 📝 File Descriptions

### Demo Files
- `demo/demo_sensor_enhanced_99_en.py`: 99-sample interactive demo

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

## 🎉 Success!

Once you see the interactive demo running, you can:
- Enter symptoms and get AI-generated medical advice
- Compare responses from teacher vs student models
- Train your own knowledge distillation model
- Customize the system for your specific needs

Happy coding! 🏥✨

