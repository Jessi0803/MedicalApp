# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/FXdiv-source")
  file(MAKE_DIRECTORY "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/FXdiv-source")
endif()
file(MAKE_DIRECTORY
  "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/FXdiv"
  "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/FXdiv-download/fxdiv-prefix"
  "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/FXdiv-download/fxdiv-prefix/tmp"
  "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/FXdiv-download/fxdiv-prefix/src/fxdiv-stamp"
  "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/FXdiv-download/fxdiv-prefix/src"
  "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/FXdiv-download/fxdiv-prefix/src/fxdiv-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/FXdiv-download/fxdiv-prefix/src/fxdiv-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/FXdiv-download/fxdiv-prefix/src/fxdiv-stamp${cfgdir}") # cfgdir has leading slash
endif()
