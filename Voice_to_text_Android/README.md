# Whisper TFLite Project

This project contains a TensorFlow Lite implementation of the Whisper ASR model, including both command-line and Android application versions. The project focuses on efficient speech recognition on mobile and embedded devices.

## Project Structure

```
.
├── whisper_android/       # Android application implementation
├── whisper_native/       # Command-line implementation
├── models/              # Model files and conversion scripts
├── tensorflow_src/     # TensorFlow source code
└── version_defs.cmake  # Version definitions
```

## Directory Description

- `whisper_android/`: Android application implementation of Whisper ASR
  - Complete Android Studio project
  - Real-time speech recognition
  - User-friendly interface
  - Optimized for mobile devices


- `whisper_native/`: Command-line version
  - C++ implementation
  - Direct model inference
  - Audio file processing
  - Testing and development tools

- `models/`: Model files and utilities
  - TensorFlow Lite model files
  - Model conversion scripts
  - Vocabulary and mel filter data
  - Test audio samples

## Quick Start

### Android Application
Follow build instructions in whisper_android/README.md
1. Open `whisper_android/` in Android Studio
2. Wait for Gradle sync to complete
3. Connect Android device or start emulator
4. Click Run

### Command-line Version
1. Navigate to `whisper_native/`
2. Follow build instructions in whisper_native/README.md
3. Run inference on audio files


## Features

1. Speech Recognition
   - Offline processing
   - Multiple languages support
   - Real-time transcription

2. Model Optimization
   - Int8 quantization
   - Float32 activations
   - Memory optimization
   - Fast inference

3. Audio Processing
   - 16kHz sampling
   - Real-time recording
   - Noise reduction
   - Format conversion

## how to generate the APK file
Using Android Studio
1. Open the whisper_android project
2. Select Build → Build Bundle(s) / APK(s) → Build APK(s)
3. Choose Build → Generate Signed Bundle / APK
   - Select APK
   - Fill in keystore information
   - Choose release version
   - Wait for build completion