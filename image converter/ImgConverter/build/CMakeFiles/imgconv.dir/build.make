# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.30

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = J:\Yandex_courses\Sprint_14\5\ImgConverter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = J:\Yandex_courses\Sprint_14\5\ImgConverter\build

# Include any dependencies generated for this target.
include CMakeFiles/imgconv.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/imgconv.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/imgconv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/imgconv.dir/flags.make

CMakeFiles/imgconv.dir/main.cpp.obj: CMakeFiles/imgconv.dir/flags.make
CMakeFiles/imgconv.dir/main.cpp.obj: CMakeFiles/imgconv.dir/includes_CXX.rsp
CMakeFiles/imgconv.dir/main.cpp.obj: J:/Yandex_courses/Sprint_14/5/ImgConverter/main.cpp
CMakeFiles/imgconv.dir/main.cpp.obj: CMakeFiles/imgconv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=J:\Yandex_courses\Sprint_14\5\ImgConverter\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/imgconv.dir/main.cpp.obj"
	C:\dev\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/imgconv.dir/main.cpp.obj -MF CMakeFiles\imgconv.dir\main.cpp.obj.d -o CMakeFiles\imgconv.dir\main.cpp.obj -c J:\Yandex_courses\Sprint_14\5\ImgConverter\main.cpp

CMakeFiles/imgconv.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/imgconv.dir/main.cpp.i"
	C:\dev\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E J:\Yandex_courses\Sprint_14\5\ImgConverter\main.cpp > CMakeFiles\imgconv.dir\main.cpp.i

CMakeFiles/imgconv.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/imgconv.dir/main.cpp.s"
	C:\dev\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S J:\Yandex_courses\Sprint_14\5\ImgConverter\main.cpp -o CMakeFiles\imgconv.dir\main.cpp.s

# Object files for target imgconv
imgconv_OBJECTS = \
"CMakeFiles/imgconv.dir/main.cpp.obj"

# External object files for target imgconv
imgconv_EXTERNAL_OBJECTS =

imgconv.exe: CMakeFiles/imgconv.dir/main.cpp.obj
imgconv.exe: CMakeFiles/imgconv.dir/build.make
imgconv.exe: ImgLibBuildDir/libImgLib.a
imgconv.exe: CMakeFiles/imgconv.dir/linkLibs.rsp
imgconv.exe: CMakeFiles/imgconv.dir/objects1.rsp
imgconv.exe: CMakeFiles/imgconv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=J:\Yandex_courses\Sprint_14\5\ImgConverter\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable imgconv.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\imgconv.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/imgconv.dir/build: imgconv.exe
.PHONY : CMakeFiles/imgconv.dir/build

CMakeFiles/imgconv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\imgconv.dir\cmake_clean.cmake
.PHONY : CMakeFiles/imgconv.dir/clean

CMakeFiles/imgconv.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" J:\Yandex_courses\Sprint_14\5\ImgConverter J:\Yandex_courses\Sprint_14\5\ImgConverter J:\Yandex_courses\Sprint_14\5\ImgConverter\build J:\Yandex_courses\Sprint_14\5\ImgConverter\build J:\Yandex_courses\Sprint_14\5\ImgConverter\build\CMakeFiles\imgconv.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/imgconv.dir/depend

