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
include _deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/flags.make

_deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/trmul.cc.o: _deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/flags.make
_deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/trmul.cc.o: /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/ruy/ruy/trmul.cc
_deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/trmul.cc.o: _deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/trmul.cc.o"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/ruy-build/ruy && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/trmul.cc.o -MF CMakeFiles/ruy_trmul.dir/trmul.cc.o.d -o CMakeFiles/ruy_trmul.dir/trmul.cc.o -c /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/ruy/ruy/trmul.cc

_deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/trmul.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ruy_trmul.dir/trmul.cc.i"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/ruy-build/ruy && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/ruy/ruy/trmul.cc > CMakeFiles/ruy_trmul.dir/trmul.cc.i

_deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/trmul.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ruy_trmul.dir/trmul.cc.s"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/ruy-build/ruy && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/ruy/ruy/trmul.cc -o CMakeFiles/ruy_trmul.dir/trmul.cc.s

# Object files for target ruy_trmul
ruy_trmul_OBJECTS = \
"CMakeFiles/ruy_trmul.dir/trmul.cc.o"

# External object files for target ruy_trmul
ruy_trmul_EXTERNAL_OBJECTS =

_deps/ruy-build/ruy/libruy_trmul.a: _deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/trmul.cc.o
_deps/ruy-build/ruy/libruy_trmul.a: _deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/build.make
_deps/ruy-build/ruy/libruy_trmul.a: _deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libruy_trmul.a"
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/ruy-build/ruy && $(CMAKE_COMMAND) -P CMakeFiles/ruy_trmul.dir/cmake_clean_target.cmake
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/ruy-build/ruy && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ruy_trmul.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/build: _deps/ruy-build/ruy/libruy_trmul.a
.PHONY : _deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/build

_deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/clean:
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/ruy-build/ruy && $(CMAKE_COMMAND) -P CMakeFiles/ruy_trmul.dir/cmake_clean.cmake
.PHONY : _deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/clean

_deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/depend:
	cd /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/tensorflow_src/tensorflow/lite/examples/minimal /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/ruy/ruy /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/ruy-build/ruy /Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/_deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : _deps/ruy-build/ruy/CMakeFiles/ruy_trmul.dir/depend

