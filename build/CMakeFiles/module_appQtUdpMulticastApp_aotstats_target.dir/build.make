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

# Utility rule file for module_appQtUdpMulticastApp_aotstats_target.

# Include any custom commands dependencies for this target.
include CMakeFiles/module_appQtUdpMulticastApp_aotstats_target.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/module_appQtUdpMulticastApp_aotstats_target.dir/progress.make

CMakeFiles/module_appQtUdpMulticastApp_aotstats_target: .rcc/qmlcache/module_appQtUdpMulticastApp.aotstats

.rcc/qmlcache/module_appQtUdpMulticastApp.aotstats: .rcc/qmlcache/appQtUdpMulticastApp_qml/Main_qml.cpp.aotstats
.rcc/qmlcache/module_appQtUdpMulticastApp.aotstats: .rcc/qmlcache/module_appQtUdpMulticastApp.aotstatslist
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/ardayuksel/QtUdpMulticastApp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating .rcc/qmlcache/module_appQtUdpMulticastApp.aotstats"
	/home/ardayuksel/Desktop/6.8.2/gcc_arm64/libexec/qmlaotstats aggregate /home/ardayuksel/QtUdpMulticastApp/build/.rcc/qmlcache/module_appQtUdpMulticastApp.aotstatslist /home/ardayuksel/QtUdpMulticastApp/build/.rcc/qmlcache/module_appQtUdpMulticastApp.aotstats

.rcc/qmlcache/appQtUdpMulticastApp_qml/Main_qml.cpp: /home/ardayuksel/Desktop/6.8.2/gcc_arm64/libexec/qmlcachegen
.rcc/qmlcache/appQtUdpMulticastApp_qml/Main_qml.cpp: /home/ardayuksel/QtUdpMulticastApp/qml/Main.qml
.rcc/qmlcache/appQtUdpMulticastApp_qml/Main_qml.cpp: .qt/rcc/qmake_QtUdpMulticastApp.qrc
.rcc/qmlcache/appQtUdpMulticastApp_qml/Main_qml.cpp: .qt/rcc/appQtUdpMulticastApp_raw_qml_0.qrc
.rcc/qmlcache/appQtUdpMulticastApp_qml/Main_qml.cpp: .qt/rcc/qml_resources.qrc
.rcc/qmlcache/appQtUdpMulticastApp_qml/Main_qml.cpp: QtUdpMulticastApp/appQtUdpMulticastApp.qmltypes
.rcc/qmlcache/appQtUdpMulticastApp_qml/Main_qml.cpp: QtUdpMulticastApp/qmldir
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/ardayuksel/QtUdpMulticastApp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating .rcc/qmlcache/appQtUdpMulticastApp_qml/Main_qml.cpp, .rcc/qmlcache/appQtUdpMulticastApp_qml/Main_qml.cpp.aotstats"
	/usr/bin/cmake -E make_directory /home/ardayuksel/QtUdpMulticastApp/build/.rcc/qmlcache/appQtUdpMulticastApp_qml
	/home/ardayuksel/Desktop/6.8.2/gcc_arm64/libexec/qmlcachegen --bare --resource-path /qt/qml/QtUdpMulticastApp/qml/Main.qml -I /home/ardayuksel/QtUdpMulticastApp/build -I /home/ardayuksel/Desktop/6.8.2/gcc_arm64/qml -i /home/ardayuksel/QtUdpMulticastApp/build/QtUdpMulticastApp/qmldir --resource /home/ardayuksel/QtUdpMulticastApp/build/.qt/rcc/qmake_QtUdpMulticastApp.qrc --resource /home/ardayuksel/QtUdpMulticastApp/build/.qt/rcc/appQtUdpMulticastApp_raw_qml_0.qrc --resource /home/ardayuksel/QtUdpMulticastApp/build/.qt/rcc/qml_resources.qrc --dump-aot-stats "--module-id=QtUdpMulticastApp(appQtUdpMulticastApp)" -o /home/ardayuksel/QtUdpMulticastApp/build/.rcc/qmlcache/appQtUdpMulticastApp_qml/Main_qml.cpp /home/ardayuksel/QtUdpMulticastApp/qml/Main.qml

.rcc/qmlcache/appQtUdpMulticastApp_qml/Main_qml.cpp.aotstats: .rcc/qmlcache/appQtUdpMulticastApp_qml/Main_qml.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate .rcc/qmlcache/appQtUdpMulticastApp_qml/Main_qml.cpp.aotstats

module_appQtUdpMulticastApp_aotstats_target: .rcc/qmlcache/appQtUdpMulticastApp_qml/Main_qml.cpp
module_appQtUdpMulticastApp_aotstats_target: .rcc/qmlcache/appQtUdpMulticastApp_qml/Main_qml.cpp.aotstats
module_appQtUdpMulticastApp_aotstats_target: .rcc/qmlcache/module_appQtUdpMulticastApp.aotstats
module_appQtUdpMulticastApp_aotstats_target: CMakeFiles/module_appQtUdpMulticastApp_aotstats_target
module_appQtUdpMulticastApp_aotstats_target: CMakeFiles/module_appQtUdpMulticastApp_aotstats_target.dir/build.make
.PHONY : module_appQtUdpMulticastApp_aotstats_target

# Rule to build all files generated by this target.
CMakeFiles/module_appQtUdpMulticastApp_aotstats_target.dir/build: module_appQtUdpMulticastApp_aotstats_target
.PHONY : CMakeFiles/module_appQtUdpMulticastApp_aotstats_target.dir/build

CMakeFiles/module_appQtUdpMulticastApp_aotstats_target.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/module_appQtUdpMulticastApp_aotstats_target.dir/cmake_clean.cmake
.PHONY : CMakeFiles/module_appQtUdpMulticastApp_aotstats_target.dir/clean

CMakeFiles/module_appQtUdpMulticastApp_aotstats_target.dir/depend:
	cd /home/ardayuksel/QtUdpMulticastApp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ardayuksel/QtUdpMulticastApp /home/ardayuksel/QtUdpMulticastApp /home/ardayuksel/QtUdpMulticastApp/build /home/ardayuksel/QtUdpMulticastApp/build /home/ardayuksel/QtUdpMulticastApp/build/CMakeFiles/module_appQtUdpMulticastApp_aotstats_target.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/module_appQtUdpMulticastApp_aotstats_target.dir/depend

