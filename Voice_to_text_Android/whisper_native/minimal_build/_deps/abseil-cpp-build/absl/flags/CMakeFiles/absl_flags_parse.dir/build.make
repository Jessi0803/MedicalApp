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
include _deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/flags.make

_deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/parse.cc.o: _deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/flags.make
_deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/parse.cc.o: /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/abseil-cpp/absl/flags/parse.cc
_deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/parse.cc.o: _deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/parse.cc.o"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/flags && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/parse.cc.o -MF CMakeFiles/absl_flags_parse.dir/parse.cc.o.d -o CMakeFiles/absl_flags_parse.dir/parse.cc.o -c /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/abseil-cpp/absl/flags/parse.cc

_deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/parse.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/absl_flags_parse.dir/parse.cc.i"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/flags && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/abseil-cpp/absl/flags/parse.cc > CMakeFiles/absl_flags_parse.dir/parse.cc.i

_deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/parse.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/absl_flags_parse.dir/parse.cc.s"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/flags && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/abseil-cpp/absl/flags/parse.cc -o CMakeFiles/absl_flags_parse.dir/parse.cc.s

# Object files for target absl_flags_parse
absl_flags_parse_OBJECTS = \
"CMakeFiles/absl_flags_parse.dir/parse.cc.o"

# External object files for target absl_flags_parse
absl_flags_parse_EXTERNAL_OBJECTS =

_deps/abseil-cpp-build/absl/flags/libabsl_flags_parse.a: _deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/parse.cc.o
_deps/abseil-cpp-build/absl/flags/libabsl_flags_parse.a: _deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/build.make
_deps/abseil-cpp-build/absl/flags/libabsl_flags_parse.a: _deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libabsl_flags_parse.a"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/flags && $(CMAKE_COMMAND) -P CMakeFiles/absl_flags_parse.dir/cmake_clean_target.cmake
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/flags && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/absl_flags_parse.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/build: _deps/abseil-cpp-build/absl/flags/libabsl_flags_parse.a
.PHONY : _deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/build

_deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/clean:
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/flags && $(CMAKE_COMMAND) -P CMakeFiles/absl_flags_parse.dir/cmake_clean.cmake
.PHONY : _deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/clean

_deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/depend:
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/tensorflow_src/tensorflow/lite/examples/minimal /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/abseil-cpp/absl/flags /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/flags /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : _deps/abseil-cpp-build/absl/flags/CMakeFiles/absl_flags_parse.dir/depend

