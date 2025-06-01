# Whisper Android Application

This is an Android application implementation of the Whisper ASR model using TensorFlow Lite. The app provides real-time speech recognition capabilities on Android devices.

## Project Structure

```
whisper_android/
├── app/                    # Main application module
│   ├── src/               # Source code directory
│   │   ├── main/         # Main source code
│   │   │   ├── java/     # Java source files
│   │   │   ├── res/      # Resource files
│   │   │   └── assets/   # Model and data files
│   │   └── test/         # Test files
│   ├── build.gradle      # App module build configuration
│   └── proguard-rules.pro # ProGuard rules
├── gradle/                # Gradle wrapper directory
├── build.gradle          # Project build configuration
└── settings.gradle       # Project settings
```

## Key Files

### Java Source Files
- `MainActivity.java`: Main activity for the application
- `WhisperProcessor.java`: Core Whisper model processing logic
- `AudioRecorder.java`: Audio recording and processing
- `ModelConfig.java`: Model configuration settings

### Resource Files
- `activity_main.xml`: Main UI layout
- `strings.xml`: String resources
- `colors.xml`: Color definitions
- `styles.xml`: UI style definitions

### Assets
- `whisper-tiny-en.tflite`: TensorFlow Lite model file
- `vocab.json`: Vocabulary file for tokenization

## Setup Instructions

1. **Environment Requirements**:
   - Android Studio Arctic Fox (2020.3.1) or newer
   - Android SDK 21 or higher
   - Gradle 7.6
   - JDK 17

2. **Open Project**:
   - Open Android Studio
   - Select "Open an existing Android Studio project"
   - Navigate to and select the `whisper_android` directory

3. **Configure Project**:
   - Wait for Gradle sync to complete
   - Ensure all dependencies are downloaded
   - Check SDK location is correctly set

4. **Build Configuration**:
   - Select "Edit Configurations"
   - Choose "app" module
   - Select target device (minimum API 21)
   - Set launch options as needed

## Running the Application

1. **Connect Device**:
   - Connect an Android device via USB
   - Enable USB debugging on the device
   - OR use an Android Emulator

2. **Build and Run**:
   - Click "Run" (green play button)
   - Select target device
   - Wait for app to install and launch

