# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/pthreadpool-source")
  file(MAKE_DIRECTORY "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/pthreadpool-source")
endif()
file(MAKE_DIRECTORY
  "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/pthreadpool"
  "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/pthreadpool-download/pthreadpool-prefix"
  "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/pthreadpool-download/pthreadpool-prefix/tmp"
  "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/pthreadpool-download/pthreadpool-prefix/src/pthreadpool-stamp"
  "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/pthreadpool-download/pthreadpool-prefix/src"
  "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/pthreadpool-download/pthreadpool-prefix/src/pthreadpool-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/pthreadpool-download/pthreadpool-prefix/src/pthreadpool-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/pthreadpool-download/pthreadpool-prefix/src/pthreadpool-stamp${cfgdir}") # cfgdir has leading slash
endif()
