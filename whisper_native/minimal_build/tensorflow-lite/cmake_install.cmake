# Install script for directory: /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/tensorflow_src/tensorflow/lite

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/eigen-build/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/farmhash-build/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/fft2d-build/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/flatbuffers-build/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/gemmlowp-build/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/cpuinfo-build/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/ml_dtypes-build/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/ruy-build/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/pthreadpool/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/tensorflow-lite/tools/cmake/modules/xnnpack/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/tensorflow-lite/profiling/proto/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/example_proto_generated/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/tensorflow-lite/tools/benchmark/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/tensorflow-lite/examples/label_image/cmake_install.cmake")
endif()

