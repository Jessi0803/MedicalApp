#!/bin/bash

# Medical Knowledge Distillation Project - Installation Script
# This script sets up the environment for running the medical knowledge distillation project

echo "🏥 Medical Knowledge Distillation Project - Installation Script"
echo "================================================================"

# Check if Python 3.8+ is installed
python_version=$(python3 --version 2>&1 | grep -oE '[0-9]+\.[0-9]+')
if [[ -z "$python_version" ]]; then
    echo "❌ Python 3 is not installed. Please install Python 3.8 or higher."
    exit 1
fi

echo "✅ Python version: $(python3 --version)"

# Check if pip is installed
if ! command -v pip3 &> /dev/null; then
    echo "❌ pip3 is not installed. Please install pip3."
    exit 1
fi

echo "✅ pip3 is available"

# Check if CUDA is available (optional but recommended)
if command -v nvidia-smi &> /dev/null; then
    echo "✅ NVIDIA GPU detected"
    nvidia-smi --query-gpu=name,memory.total --format=csv,noheader,nounits
else
    echo "⚠️  No NVIDIA GPU detected. The project will run on CPU (slower)."
fi

# Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv venv

# Activate virtual environment
echo "🔧 Activating virtual environment..."
source venv/bin/activate

# Upgrade pip
echo "⬆️  Upgrading pip..."
pip install --upgrade pip

# Install requirements
echo "📚 Installing Python packages..."
pip install -r requirements.txt

# Check if installation was successful
if [ $? -eq 0 ]; then
    echo "✅ Installation completed successfully!"
    echo ""
    echo "🎯 Next steps:"
    echo "1. Activate the virtual environment: source venv/bin/activate"
    echo "2. Run the quick demo: python quick_demo.py"
    echo "3. Or run the full demo: python demo/demo_sensor_enhanced_99_en.py"
    echo ""
    echo "💡 Note: The first run will download the teacher model (~14GB)"
    echo "   Make sure you have sufficient disk space and GPU memory (24GB+ VRAM)"
else
    echo "❌ Installation failed. Please check the error messages above."
    exit 1
fi 