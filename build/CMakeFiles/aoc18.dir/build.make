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
CMAKE_SOURCE_DIR = /Users/vft013/project/aoc18

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/vft013/project/aoc18/build

# Include any dependencies generated for this target.
include CMakeFiles/aoc18.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/aoc18.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/aoc18.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/aoc18.dir/flags.make

CMakeFiles/aoc18.dir/src/Day01.cpp.o: CMakeFiles/aoc18.dir/flags.make
CMakeFiles/aoc18.dir/src/Day01.cpp.o: /Users/vft013/project/aoc18/src/Day01.cpp
CMakeFiles/aoc18.dir/src/Day01.cpp.o: CMakeFiles/aoc18.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vft013/project/aoc18/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/aoc18.dir/src/Day01.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/aoc18.dir/src/Day01.cpp.o -MF CMakeFiles/aoc18.dir/src/Day01.cpp.o.d -o CMakeFiles/aoc18.dir/src/Day01.cpp.o -c /Users/vft013/project/aoc18/src/Day01.cpp

CMakeFiles/aoc18.dir/src/Day01.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aoc18.dir/src/Day01.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vft013/project/aoc18/src/Day01.cpp > CMakeFiles/aoc18.dir/src/Day01.cpp.i

CMakeFiles/aoc18.dir/src/Day01.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aoc18.dir/src/Day01.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vft013/project/aoc18/src/Day01.cpp -o CMakeFiles/aoc18.dir/src/Day01.cpp.s

CMakeFiles/aoc18.dir/src/Day02.cpp.o: CMakeFiles/aoc18.dir/flags.make
CMakeFiles/aoc18.dir/src/Day02.cpp.o: /Users/vft013/project/aoc18/src/Day02.cpp
CMakeFiles/aoc18.dir/src/Day02.cpp.o: CMakeFiles/aoc18.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vft013/project/aoc18/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/aoc18.dir/src/Day02.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/aoc18.dir/src/Day02.cpp.o -MF CMakeFiles/aoc18.dir/src/Day02.cpp.o.d -o CMakeFiles/aoc18.dir/src/Day02.cpp.o -c /Users/vft013/project/aoc18/src/Day02.cpp

CMakeFiles/aoc18.dir/src/Day02.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aoc18.dir/src/Day02.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vft013/project/aoc18/src/Day02.cpp > CMakeFiles/aoc18.dir/src/Day02.cpp.i

CMakeFiles/aoc18.dir/src/Day02.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aoc18.dir/src/Day02.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vft013/project/aoc18/src/Day02.cpp -o CMakeFiles/aoc18.dir/src/Day02.cpp.s

CMakeFiles/aoc18.dir/src/Runner.cpp.o: CMakeFiles/aoc18.dir/flags.make
CMakeFiles/aoc18.dir/src/Runner.cpp.o: /Users/vft013/project/aoc18/src/Runner.cpp
CMakeFiles/aoc18.dir/src/Runner.cpp.o: CMakeFiles/aoc18.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vft013/project/aoc18/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/aoc18.dir/src/Runner.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/aoc18.dir/src/Runner.cpp.o -MF CMakeFiles/aoc18.dir/src/Runner.cpp.o.d -o CMakeFiles/aoc18.dir/src/Runner.cpp.o -c /Users/vft013/project/aoc18/src/Runner.cpp

CMakeFiles/aoc18.dir/src/Runner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aoc18.dir/src/Runner.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vft013/project/aoc18/src/Runner.cpp > CMakeFiles/aoc18.dir/src/Runner.cpp.i

CMakeFiles/aoc18.dir/src/Runner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aoc18.dir/src/Runner.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vft013/project/aoc18/src/Runner.cpp -o CMakeFiles/aoc18.dir/src/Runner.cpp.s

CMakeFiles/aoc18.dir/src/Solution.cpp.o: CMakeFiles/aoc18.dir/flags.make
CMakeFiles/aoc18.dir/src/Solution.cpp.o: /Users/vft013/project/aoc18/src/Solution.cpp
CMakeFiles/aoc18.dir/src/Solution.cpp.o: CMakeFiles/aoc18.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vft013/project/aoc18/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/aoc18.dir/src/Solution.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/aoc18.dir/src/Solution.cpp.o -MF CMakeFiles/aoc18.dir/src/Solution.cpp.o.d -o CMakeFiles/aoc18.dir/src/Solution.cpp.o -c /Users/vft013/project/aoc18/src/Solution.cpp

CMakeFiles/aoc18.dir/src/Solution.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aoc18.dir/src/Solution.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vft013/project/aoc18/src/Solution.cpp > CMakeFiles/aoc18.dir/src/Solution.cpp.i

CMakeFiles/aoc18.dir/src/Solution.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aoc18.dir/src/Solution.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vft013/project/aoc18/src/Solution.cpp -o CMakeFiles/aoc18.dir/src/Solution.cpp.s

# Object files for target aoc18
aoc18_OBJECTS = \
"CMakeFiles/aoc18.dir/src/Day01.cpp.o" \
"CMakeFiles/aoc18.dir/src/Day02.cpp.o" \
"CMakeFiles/aoc18.dir/src/Runner.cpp.o" \
"CMakeFiles/aoc18.dir/src/Solution.cpp.o"

# External object files for target aoc18
aoc18_EXTERNAL_OBJECTS =

aoc18: CMakeFiles/aoc18.dir/src/Day01.cpp.o
aoc18: CMakeFiles/aoc18.dir/src/Day02.cpp.o
aoc18: CMakeFiles/aoc18.dir/src/Runner.cpp.o
aoc18: CMakeFiles/aoc18.dir/src/Solution.cpp.o
aoc18: CMakeFiles/aoc18.dir/build.make
aoc18: CMakeFiles/aoc18.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/vft013/project/aoc18/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable aoc18"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aoc18.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/aoc18.dir/build: aoc18
.PHONY : CMakeFiles/aoc18.dir/build

CMakeFiles/aoc18.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/aoc18.dir/cmake_clean.cmake
.PHONY : CMakeFiles/aoc18.dir/clean

CMakeFiles/aoc18.dir/depend:
	cd /Users/vft013/project/aoc18/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/vft013/project/aoc18 /Users/vft013/project/aoc18 /Users/vft013/project/aoc18/build /Users/vft013/project/aoc18/build /Users/vft013/project/aoc18/build/CMakeFiles/aoc18.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/aoc18.dir/depend

