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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ardayuksel/QtUdpMulticastApp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ardayuksel/QtUdpMulticastApp/build

# Utility rule file for appQtUdpMulticastApp_autogen.

# Include any custom commands dependencies for this target.
include CMakeFiles/appQtUdpMulticastApp_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/appQtUdpMulticastApp_autogen.dir/progress.make

CMakeFiles/appQtUdpMulticastApp_autogen: appQtUdpMulticastApp_autogen/timestamp

appQtUdpMulticastApp_autogen/timestamp: /home/ardayuksel/Desktop/6.8.2/gcc_arm64/libexec/moc
appQtUdpMulticastApp_autogen/timestamp: CMakeFiles/appQtUdpMulticastApp_autogen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/ardayuksel/QtUdpMulticastApp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target appQtUdpMulticastApp"
	/usr/bin/cmake -E cmake_autogen /home/ardayuksel/QtUdpMulticastApp/build/CMakeFiles/appQtUdpMulticastApp_autogen.dir/AutogenInfo.json ""
	/usr/bin/cmake -E touch /home/ardayuksel/QtUdpMulticastApp/build/appQtUdpMulticastApp_autogen/timestamp

appQtUdpMulticastApp_autogen: CMakeFiles/appQtUdpMulticastApp_autogen
appQtUdpMulticastApp_autogen: appQtUdpMulticastApp_autogen/timestamp
appQtUdpMulticastApp_autogen: CMakeFiles/appQtUdpMulticastApp_autogen.dir/build.make
.PHONY : appQtUdpMulticastApp_autogen

# Rule to build all files generated by this target.
CMakeFiles/appQtUdpMulticastApp_autogen.dir/build: appQtUdpMulticastApp_autogen
.PHONY : CMakeFiles/appQtUdpMulticastApp_autogen.dir/build

CMakeFiles/appQtUdpMulticastApp_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/appQtUdpMulticastApp_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/appQtUdpMulticastApp_autogen.dir/clean

CMakeFiles/appQtUdpMulticastApp_autogen.dir/depend:
	cd /home/ardayuksel/QtUdpMulticastApp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ardayuksel/QtUdpMulticastApp /home/ardayuksel/QtUdpMulticastApp /home/ardayuksel/QtUdpMulticastApp/build /home/ardayuksel/QtUdpMulticastApp/build /home/ardayuksel/QtUdpMulticastApp/build/CMakeFiles/appQtUdpMulticastApp_autogen.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/appQtUdpMulticastApp_autogen.dir/depend

