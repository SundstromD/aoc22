# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.25.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.25.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/vft013/project/aoc22

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/vft013/project/aoc22/build

# Include any dependencies generated for this target.
include CMakeFiles/aoc22.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/aoc22.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/aoc22.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/aoc22.dir/flags.make

CMakeFiles/aoc22.dir/src/Day01.cpp.o: CMakeFiles/aoc22.dir/flags.make
CMakeFiles/aoc22.dir/src/Day01.cpp.o: /Users/vft013/project/aoc22/src/Day01.cpp
CMakeFiles/aoc22.dir/src/Day01.cpp.o: CMakeFiles/aoc22.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vft013/project/aoc22/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/aoc22.dir/src/Day01.cpp.o"
	/usr/local/bin/g++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/aoc22.dir/src/Day01.cpp.o -MF CMakeFiles/aoc22.dir/src/Day01.cpp.o.d -o CMakeFiles/aoc22.dir/src/Day01.cpp.o -c /Users/vft013/project/aoc22/src/Day01.cpp

CMakeFiles/aoc22.dir/src/Day01.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aoc22.dir/src/Day01.cpp.i"
	/usr/local/bin/g++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vft013/project/aoc22/src/Day01.cpp > CMakeFiles/aoc22.dir/src/Day01.cpp.i

CMakeFiles/aoc22.dir/src/Day01.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aoc22.dir/src/Day01.cpp.s"
	/usr/local/bin/g++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vft013/project/aoc22/src/Day01.cpp -o CMakeFiles/aoc22.dir/src/Day01.cpp.s

CMakeFiles/aoc22.dir/src/Day02.cpp.o: CMakeFiles/aoc22.dir/flags.make
CMakeFiles/aoc22.dir/src/Day02.cpp.o: /Users/vft013/project/aoc22/src/Day02.cpp
CMakeFiles/aoc22.dir/src/Day02.cpp.o: CMakeFiles/aoc22.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vft013/project/aoc22/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/aoc22.dir/src/Day02.cpp.o"
	/usr/local/bin/g++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/aoc22.dir/src/Day02.cpp.o -MF CMakeFiles/aoc22.dir/src/Day02.cpp.o.d -o CMakeFiles/aoc22.dir/src/Day02.cpp.o -c /Users/vft013/project/aoc22/src/Day02.cpp

CMakeFiles/aoc22.dir/src/Day02.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aoc22.dir/src/Day02.cpp.i"
	/usr/local/bin/g++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vft013/project/aoc22/src/Day02.cpp > CMakeFiles/aoc22.dir/src/Day02.cpp.i

CMakeFiles/aoc22.dir/src/Day02.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aoc22.dir/src/Day02.cpp.s"
	/usr/local/bin/g++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vft013/project/aoc22/src/Day02.cpp -o CMakeFiles/aoc22.dir/src/Day02.cpp.s

CMakeFiles/aoc22.dir/src/Runner.cpp.o: CMakeFiles/aoc22.dir/flags.make
CMakeFiles/aoc22.dir/src/Runner.cpp.o: /Users/vft013/project/aoc22/src/Runner.cpp
CMakeFiles/aoc22.dir/src/Runner.cpp.o: CMakeFiles/aoc22.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vft013/project/aoc22/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/aoc22.dir/src/Runner.cpp.o"
	/usr/local/bin/g++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/aoc22.dir/src/Runner.cpp.o -MF CMakeFiles/aoc22.dir/src/Runner.cpp.o.d -o CMakeFiles/aoc22.dir/src/Runner.cpp.o -c /Users/vft013/project/aoc22/src/Runner.cpp

CMakeFiles/aoc22.dir/src/Runner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aoc22.dir/src/Runner.cpp.i"
	/usr/local/bin/g++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vft013/project/aoc22/src/Runner.cpp > CMakeFiles/aoc22.dir/src/Runner.cpp.i

CMakeFiles/aoc22.dir/src/Runner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aoc22.dir/src/Runner.cpp.s"
	/usr/local/bin/g++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vft013/project/aoc22/src/Runner.cpp -o CMakeFiles/aoc22.dir/src/Runner.cpp.s

CMakeFiles/aoc22.dir/src/Solution.cpp.o: CMakeFiles/aoc22.dir/flags.make
CMakeFiles/aoc22.dir/src/Solution.cpp.o: /Users/vft013/project/aoc22/src/Solution.cpp
CMakeFiles/aoc22.dir/src/Solution.cpp.o: CMakeFiles/aoc22.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vft013/project/aoc22/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/aoc22.dir/src/Solution.cpp.o"
	/usr/local/bin/g++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/aoc22.dir/src/Solution.cpp.o -MF CMakeFiles/aoc22.dir/src/Solution.cpp.o.d -o CMakeFiles/aoc22.dir/src/Solution.cpp.o -c /Users/vft013/project/aoc22/src/Solution.cpp

CMakeFiles/aoc22.dir/src/Solution.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aoc22.dir/src/Solution.cpp.i"
	/usr/local/bin/g++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vft013/project/aoc22/src/Solution.cpp > CMakeFiles/aoc22.dir/src/Solution.cpp.i

CMakeFiles/aoc22.dir/src/Solution.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aoc22.dir/src/Solution.cpp.s"
	/usr/local/bin/g++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vft013/project/aoc22/src/Solution.cpp -o CMakeFiles/aoc22.dir/src/Solution.cpp.s

# Object files for target aoc22
aoc22_OBJECTS = \
"CMakeFiles/aoc22.dir/src/Day01.cpp.o" \
"CMakeFiles/aoc22.dir/src/Day02.cpp.o" \
"CMakeFiles/aoc22.dir/src/Runner.cpp.o" \
"CMakeFiles/aoc22.dir/src/Solution.cpp.o"

# External object files for target aoc22
aoc22_EXTERNAL_OBJECTS =

aoc22: CMakeFiles/aoc22.dir/src/Day01.cpp.o
aoc22: CMakeFiles/aoc22.dir/src/Day02.cpp.o
aoc22: CMakeFiles/aoc22.dir/src/Runner.cpp.o
aoc22: CMakeFiles/aoc22.dir/src/Solution.cpp.o
aoc22: CMakeFiles/aoc22.dir/build.make
aoc22: CMakeFiles/aoc22.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/vft013/project/aoc22/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable aoc22"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aoc22.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/aoc22.dir/build: aoc22
.PHONY : CMakeFiles/aoc22.dir/build

CMakeFiles/aoc22.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/aoc22.dir/cmake_clean.cmake
.PHONY : CMakeFiles/aoc22.dir/clean

CMakeFiles/aoc22.dir/depend:
	cd /Users/vft013/project/aoc22/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/vft013/project/aoc22 /Users/vft013/project/aoc22 /Users/vft013/project/aoc22/build /Users/vft013/project/aoc22/build /Users/vft013/project/aoc22/build/CMakeFiles/aoc22.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/aoc22.dir/depend

