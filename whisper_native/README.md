# Whisper Native Command-line Version

This is a command-line implementation of the Whisper ASR model using TensorFlow Lite for inference. This version can run directly on your computer and is primarily used for testing and developing core functionality.

## Project Structure

```
whisper_native/
├── minimal.cc           # Main program file
├── whisper.h           # Whisper model-related definitions
├── tflt-vocab-mel.h    # Vocabulary and mel filter data
├── dr_wav.h           # WAV audio file processing library
├── input_features.h   # Preprocessed feature data
├── samples/           # Test audio samples
│   └── jfk.wav       # Test audio file
├── minimal_build/     # CMake build directory
└── tensorflow_src/    # TensorFlow source code
```

## File Description

### Core Files
- `minimal.cc`: Implements main audio processing and model inference logic
- `whisper.h`: Defines Whisper model-related data structures and functions
- `tflt-vocab-mel.h`: Contains vocabulary and mel spectrogram generation filters
- `dr_wav.h`: Used for reading and processing WAV format audio files
- `input_features.h`: Contains preprocessed feature data

### Test Resources
- `samples/jfk.wav`: Sample audio file for testing the model

## How to Run

1. **Install Dependencies**:
   ```bash
   
   # macOS
   brew install cmake
   ```

2. **Build Project**:
   ```bash
   # Enter build directory
   cd minimal_build

   # Configure CMake
   cmake ../tensorflow_src/tensorflow/lite/examples/minimal

   # Build
   cmake --build . -j 8
   ```

3. **Run Speech Recognition**:
   ```bash
   # Basic usage
   ./minimal ../../models/whisper-tiny-en.tflite ../samples/jfk.wav

   # Using your own audio file
   ./minimal ../../models/whisper-tiny-en.tflite path/to/your/audio.wav
   ```

## Input Requirements

1. **Audio Format**:
   - Sample Rate: 16kHz
   - Channels: Mono
   - Bit Depth: 16-bit
   - Format: WAV (PCM)

2. **Model File**:
   - Format: TFLite
   - Default: whisper-tiny-en.tflite
   - Location: ../../models/

## Example Output
```
n_vocab: 50256
mel.n_len: 3000
mel.n_mel: 80
Inference time X seconds
[Transcribed Text]
```

