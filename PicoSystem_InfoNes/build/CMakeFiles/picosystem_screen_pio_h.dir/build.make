# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tom/Coding/PicoSystem/CPP_Projects/PicoSystem_InfoNes

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tom/Coding/PicoSystem/CPP_Projects/PicoSystem_InfoNes/build

# Utility rule file for picosystem_screen_pio_h.

# Include any custom commands dependencies for this target.
include CMakeFiles/picosystem_screen_pio_h.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/picosystem_screen_pio_h.dir/progress.make

CMakeFiles/picosystem_screen_pio_h: screen.pio.h

screen.pio.h: /home/tom/Coding/PicoSystem/CPP_Projects/PicoSystem_InfoNes/picosystem/screen.pio
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/tom/Coding/PicoSystem/CPP_Projects/PicoSystem_InfoNes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating screen.pio.h"
	pioasm/pioasm -o c-sdk /home/tom/Coding/PicoSystem/CPP_Projects/PicoSystem_InfoNes/picosystem/screen.pio /home/tom/Coding/PicoSystem/CPP_Projects/PicoSystem_InfoNes/build/screen.pio.h

picosystem_screen_pio_h: CMakeFiles/picosystem_screen_pio_h
picosystem_screen_pio_h: screen.pio.h
picosystem_screen_pio_h: CMakeFiles/picosystem_screen_pio_h.dir/build.make
.PHONY : picosystem_screen_pio_h

# Rule to build all files generated by this target.
CMakeFiles/picosystem_screen_pio_h.dir/build: picosystem_screen_pio_h
.PHONY : CMakeFiles/picosystem_screen_pio_h.dir/build

CMakeFiles/picosystem_screen_pio_h.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/picosystem_screen_pio_h.dir/cmake_clean.cmake
.PHONY : CMakeFiles/picosystem_screen_pio_h.dir/clean

CMakeFiles/picosystem_screen_pio_h.dir/depend:
	cd /home/tom/Coding/PicoSystem/CPP_Projects/PicoSystem_InfoNes/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tom/Coding/PicoSystem/CPP_Projects/PicoSystem_InfoNes /home/tom/Coding/PicoSystem/CPP_Projects/PicoSystem_InfoNes /home/tom/Coding/PicoSystem/CPP_Projects/PicoSystem_InfoNes/build /home/tom/Coding/PicoSystem/CPP_Projects/PicoSystem_InfoNes/build /home/tom/Coding/PicoSystem/CPP_Projects/PicoSystem_InfoNes/build/CMakeFiles/picosystem_screen_pio_h.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/picosystem_screen_pio_h.dir/depend

