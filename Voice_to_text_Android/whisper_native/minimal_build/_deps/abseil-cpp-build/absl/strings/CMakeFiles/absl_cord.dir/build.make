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
include _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/flags.make

_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord.cc.o: _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/flags.make
_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord.cc.o: /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/abseil-cpp/absl/strings/cord.cc
_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord.cc.o: _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord.cc.o"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/strings && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord.cc.o -MF CMakeFiles/absl_cord.dir/cord.cc.o.d -o CMakeFiles/absl_cord.dir/cord.cc.o -c /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/abseil-cpp/absl/strings/cord.cc

_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/absl_cord.dir/cord.cc.i"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/strings && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/abseil-cpp/absl/strings/cord.cc > CMakeFiles/absl_cord.dir/cord.cc.i

_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/absl_cord.dir/cord.cc.s"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/strings && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/abseil-cpp/absl/strings/cord.cc -o CMakeFiles/absl_cord.dir/cord.cc.s

_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord_analysis.cc.o: _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/flags.make
_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord_analysis.cc.o: /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/abseil-cpp/absl/strings/cord_analysis.cc
_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord_analysis.cc.o: _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord_analysis.cc.o"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/strings && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord_analysis.cc.o -MF CMakeFiles/absl_cord.dir/cord_analysis.cc.o.d -o CMakeFiles/absl_cord.dir/cord_analysis.cc.o -c /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/abseil-cpp/absl/strings/cord_analysis.cc

_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord_analysis.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/absl_cord.dir/cord_analysis.cc.i"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/strings && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/abseil-cpp/absl/strings/cord_analysis.cc > CMakeFiles/absl_cord.dir/cord_analysis.cc.i

_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord_analysis.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/absl_cord.dir/cord_analysis.cc.s"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/strings && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/abseil-cpp/absl/strings/cord_analysis.cc -o CMakeFiles/absl_cord.dir/cord_analysis.cc.s

_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord_buffer.cc.o: _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/flags.make
_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord_buffer.cc.o: /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/abseil-cpp/absl/strings/cord_buffer.cc
_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord_buffer.cc.o: _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord_buffer.cc.o"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/strings && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord_buffer.cc.o -MF CMakeFiles/absl_cord.dir/cord_buffer.cc.o.d -o CMakeFiles/absl_cord.dir/cord_buffer.cc.o -c /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/abseil-cpp/absl/strings/cord_buffer.cc

_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord_buffer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/absl_cord.dir/cord_buffer.cc.i"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/strings && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/abseil-cpp/absl/strings/cord_buffer.cc > CMakeFiles/absl_cord.dir/cord_buffer.cc.i

_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord_buffer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/absl_cord.dir/cord_buffer.cc.s"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/strings && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/abseil-cpp/absl/strings/cord_buffer.cc -o CMakeFiles/absl_cord.dir/cord_buffer.cc.s

# Object files for target absl_cord
absl_cord_OBJECTS = \
"CMakeFiles/absl_cord.dir/cord.cc.o" \
"CMakeFiles/absl_cord.dir/cord_analysis.cc.o" \
"CMakeFiles/absl_cord.dir/cord_buffer.cc.o"

# External object files for target absl_cord
absl_cord_EXTERNAL_OBJECTS =

_deps/abseil-cpp-build/absl/strings/libabsl_cord.a: _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord.cc.o
_deps/abseil-cpp-build/absl/strings/libabsl_cord.a: _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord_analysis.cc.o
_deps/abseil-cpp-build/absl/strings/libabsl_cord.a: _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/cord_buffer.cc.o
_deps/abseil-cpp-build/absl/strings/libabsl_cord.a: _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/build.make
_deps/abseil-cpp-build/absl/strings/libabsl_cord.a: _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libabsl_cord.a"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/strings && $(CMAKE_COMMAND) -P CMakeFiles/absl_cord.dir/cmake_clean_target.cmake
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/strings && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/absl_cord.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/build: _deps/abseil-cpp-build/absl/strings/libabsl_cord.a
.PHONY : _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/build

_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/clean:
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/strings && $(CMAKE_COMMAND) -P CMakeFiles/absl_cord.dir/cmake_clean.cmake
.PHONY : _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/clean

_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/depend:
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/tensorflow_src/tensorflow/lite/examples/minimal /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/abseil-cpp/absl/strings /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/strings /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : _deps/abseil-cpp-build/absl/strings/CMakeFiles/absl_cord.dir/depend

