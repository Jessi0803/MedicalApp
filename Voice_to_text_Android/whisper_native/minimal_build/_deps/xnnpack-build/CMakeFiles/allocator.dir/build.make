# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/tensorflow_src/tensorflow/lite/examples/minimal

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build

# Include any dependencies generated for this target.
include _deps/xnnpack-build/CMakeFiles/allocator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/xnnpack-build/CMakeFiles/allocator.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/xnnpack-build/CMakeFiles/allocator.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/xnnpack-build/CMakeFiles/allocator.dir/flags.make

_deps/xnnpack-build/CMakeFiles/allocator.dir/src/allocator.c.o: _deps/xnnpack-build/CMakeFiles/allocator.dir/flags.make
_deps/xnnpack-build/CMakeFiles/allocator.dir/src/allocator.c.o: /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/xnnpack/src/allocator.c
_deps/xnnpack-build/CMakeFiles/allocator.dir/src/allocator.c.o: _deps/xnnpack-build/CMakeFiles/allocator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object _deps/xnnpack-build/CMakeFiles/allocator.dir/src/allocator.c.o"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/xnnpack-build && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/xnnpack-build/CMakeFiles/allocator.dir/src/allocator.c.o -MF CMakeFiles/allocator.dir/src/allocator.c.o.d -o CMakeFiles/allocator.dir/src/allocator.c.o -c /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/xnnpack/src/allocator.c

_deps/xnnpack-build/CMakeFiles/allocator.dir/src/allocator.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/allocator.dir/src/allocator.c.i"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/xnnpack-build && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/xnnpack/src/allocator.c > CMakeFiles/allocator.dir/src/allocator.c.i

_deps/xnnpack-build/CMakeFiles/allocator.dir/src/allocator.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/allocator.dir/src/allocator.c.s"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/xnnpack-build && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/xnnpack/src/allocator.c -o CMakeFiles/allocator.dir/src/allocator.c.s

allocator: _deps/xnnpack-build/CMakeFiles/allocator.dir/src/allocator.c.o
allocator: _deps/xnnpack-build/CMakeFiles/allocator.dir/build.make
.PHONY : allocator

# Rule to build all files generated by this target.
_deps/xnnpack-build/CMakeFiles/allocator.dir/build: allocator
.PHONY : _deps/xnnpack-build/CMakeFiles/allocator.dir/build

_deps/xnnpack-build/CMakeFiles/allocator.dir/clean:
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/xnnpack-build && $(CMAKE_COMMAND) -P CMakeFiles/allocator.dir/cmake_clean.cmake
.PHONY : _deps/xnnpack-build/CMakeFiles/allocator.dir/clean

_deps/xnnpack-build/CMakeFiles/allocator.dir/depend:
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/tensorflow_src/tensorflow/lite/examples/minimal /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/xnnpack /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/xnnpack-build /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/xnnpack-build/CMakeFiles/allocator.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : _deps/xnnpack-build/CMakeFiles/allocator.dir/depend

