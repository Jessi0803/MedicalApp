# Models Directory

This directory contains models and tools for speech processing, including ASR (Automatic Speech Recognition) and speech enhancement.

## Model Files

### whisper-tiny-en.tflite (40MB)
- A TensorFlow Lite version of OpenAI's Whisper ASR model
- Specifically optimized for English speech recognition
- Features:
  - Vocabulary size: 50,256 tokens
  - Input: 80 mel frequency bands
  - Context window: 3000 frames
  - Optimized for mobile and embedded devices
  - Suitable for real-time transcription

### dtln_quantized.tflite (372KB)
- Quantized version of the Dual-signal Transformation LSTM Network (DTLN)
- Purpose: Speech enhancement and noise reduction
- Features:
  - Real-time processing capability
  - Low latency performance
  - 8-bit quantization for efficient inference
  - Suitable as a preprocessing step for ASR
  - Optimized for mobile and embedded devices

## Utility Notebooks

### generate_tflite_from_whisper.ipynb
A Jupyter notebook for converting Whisper models to TFLite format.
- Key functionalities:
  - Installation of required dependencies (transformers, datasets)
  - Loading and preprocessing Whisper ASR models
  - TensorFlow SavedModel generation
  - TFLite conversion with optimization options
  - Custom serving function implementation
  - Generation-enabled TFLite model creation
- Usage instructions included in the notebook

### tflt_vocab_mel.ipynb
A Jupyter notebook for generating vocabulary and mel-spectrogram files.
- Key functionalities:
  - Cloning required repositories (whisper.cpp, whisper)
  - Downloading pre-trained model weights
  - Processing tokenizer vocabulary
  - Generating mel filter banks
  - Creating binary format files for inference
  - Compatibility with both multilingual and English-only models
- Outputs:
  - tflt-vocab-mel.bin: Binary file containing vocabulary and mel filters

## Google Colab Links

1. [Convert OpenAI Whisper ASR TensorFlow saved models to TFLite models](https://colab.research.google.com/drive/1JvK6Kc0TrHvQXvJhH-0Tg3WxjSLBPq4q)
2. [Generate vocabulary mel files](https://colab.research.google.com/drive/1JvK6Kc0TrHvQXvJhH-0Tg3WxjSLBPq4q)

## Usage Example

```python
# Example code for running inference with Whisper model
./minimal ../../models/whisper-tiny-en.tflite ../samples/jfk.wav

# Expected output format:
# - Vocabulary size (n_vocab:50256)
# - Mel spectrogram parameters (mel.n_len, mel.n_mel)
# - Inference time
# - Transcribed text
```

## Model Pipeline
1. Audio Input
2. (Optional) Noise Reduction using DTLN
3. Mel Spectrogram Generation
4. ASR using Whisper
5. Text Output

## Notes
- The DTLN model can be used as an optional preprocessing step to improve ASR accuracy in noisy environments
- Both models are optimized for mobile and embedded devices
- The Whisper model supports real-time transcription
- All models are quantized for efficient inference
