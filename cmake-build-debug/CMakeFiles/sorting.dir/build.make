# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\programy na studia\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\programy na studia\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\projektyCPP\sorting

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\projektyCPP\sorting\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/sorting.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sorting.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sorting.dir/flags.make

CMakeFiles/sorting.dir/main.c.obj: CMakeFiles/sorting.dir/flags.make
CMakeFiles/sorting.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\projektyCPP\sorting\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/sorting.dir/main.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\sorting.dir\main.c.obj   -c D:\projektyCPP\sorting\main.c

CMakeFiles/sorting.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sorting.dir/main.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\projektyCPP\sorting\main.c > CMakeFiles\sorting.dir\main.c.i

CMakeFiles/sorting.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sorting.dir/main.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\projektyCPP\sorting\main.c -o CMakeFiles\sorting.dir\main.c.s

CMakeFiles/sorting.dir/sort.c.obj: CMakeFiles/sorting.dir/flags.make
CMakeFiles/sorting.dir/sort.c.obj: ../sort.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\projektyCPP\sorting\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/sorting.dir/sort.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\sorting.dir\sort.c.obj   -c D:\projektyCPP\sorting\sort.c

CMakeFiles/sorting.dir/sort.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sorting.dir/sort.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\projektyCPP\sorting\sort.c > CMakeFiles\sorting.dir\sort.c.i

CMakeFiles/sorting.dir/sort.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sorting.dir/sort.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\projektyCPP\sorting\sort.c -o CMakeFiles\sorting.dir\sort.c.s

# Object files for target sorting
sorting_OBJECTS = \
"CMakeFiles/sorting.dir/main.c.obj" \
"CMakeFiles/sorting.dir/sort.c.obj"

# External object files for target sorting
sorting_EXTERNAL_OBJECTS =

sorting.exe: CMakeFiles/sorting.dir/main.c.obj
sorting.exe: CMakeFiles/sorting.dir/sort.c.obj
sorting.exe: CMakeFiles/sorting.dir/build.make
sorting.exe: CMakeFiles/sorting.dir/linklibs.rsp
sorting.exe: CMakeFiles/sorting.dir/objects1.rsp
sorting.exe: CMakeFiles/sorting.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\projektyCPP\sorting\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable sorting.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\sorting.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sorting.dir/build: sorting.exe

.PHONY : CMakeFiles/sorting.dir/build

CMakeFiles/sorting.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\sorting.dir\cmake_clean.cmake
.PHONY : CMakeFiles/sorting.dir/clean

CMakeFiles/sorting.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\projektyCPP\sorting D:\projektyCPP\sorting D:\projektyCPP\sorting\cmake-build-debug D:\projektyCPP\sorting\cmake-build-debug D:\projektyCPP\sorting\cmake-build-debug\CMakeFiles\sorting.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sorting.dir/depend
