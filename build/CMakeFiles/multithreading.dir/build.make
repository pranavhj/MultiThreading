# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /home/pranav/.local/lib/python2.7/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/pranav/.local/lib/python2.7/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pranav/MultiThreading

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pranav/MultiThreading/build

# Include any dependencies generated for this target.
include CMakeFiles/multithreading.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/multithreading.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/multithreading.dir/flags.make

CMakeFiles/multithreading.dir/src/main.cpp.o: CMakeFiles/multithreading.dir/flags.make
CMakeFiles/multithreading.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pranav/MultiThreading/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/multithreading.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/multithreading.dir/src/main.cpp.o -c /home/pranav/MultiThreading/src/main.cpp

CMakeFiles/multithreading.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/multithreading.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pranav/MultiThreading/src/main.cpp > CMakeFiles/multithreading.dir/src/main.cpp.i

CMakeFiles/multithreading.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/multithreading.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pranav/MultiThreading/src/main.cpp -o CMakeFiles/multithreading.dir/src/main.cpp.s

# Object files for target multithreading
multithreading_OBJECTS = \
"CMakeFiles/multithreading.dir/src/main.cpp.o"

# External object files for target multithreading
multithreading_EXTERNAL_OBJECTS =

multithreading: CMakeFiles/multithreading.dir/src/main.cpp.o
multithreading: CMakeFiles/multithreading.dir/build.make
multithreading: CMakeFiles/multithreading.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pranav/MultiThreading/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable multithreading"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/multithreading.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/multithreading.dir/build: multithreading

.PHONY : CMakeFiles/multithreading.dir/build

CMakeFiles/multithreading.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/multithreading.dir/cmake_clean.cmake
.PHONY : CMakeFiles/multithreading.dir/clean

CMakeFiles/multithreading.dir/depend:
	cd /home/pranav/MultiThreading/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pranav/MultiThreading /home/pranav/MultiThreading /home/pranav/MultiThreading/build /home/pranav/MultiThreading/build /home/pranav/MultiThreading/build/CMakeFiles/multithreading.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/multithreading.dir/depend

