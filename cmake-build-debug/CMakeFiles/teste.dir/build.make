# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/joao/CLionProjects/testandocpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joao/CLionProjects/testandocpp/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/teste.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/teste.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/teste.dir/flags.make

CMakeFiles/teste.dir/main.cpp.o: CMakeFiles/teste.dir/flags.make
CMakeFiles/teste.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joao/CLionProjects/testandocpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/teste.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/teste.dir/main.cpp.o -c /home/joao/CLionProjects/testandocpp/main.cpp

CMakeFiles/teste.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/teste.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joao/CLionProjects/testandocpp/main.cpp > CMakeFiles/teste.dir/main.cpp.i

CMakeFiles/teste.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/teste.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joao/CLionProjects/testandocpp/main.cpp -o CMakeFiles/teste.dir/main.cpp.s

CMakeFiles/teste.dir/src/graphics/window.cpp.o: CMakeFiles/teste.dir/flags.make
CMakeFiles/teste.dir/src/graphics/window.cpp.o: ../src/graphics/window.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joao/CLionProjects/testandocpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/teste.dir/src/graphics/window.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/teste.dir/src/graphics/window.cpp.o -c /home/joao/CLionProjects/testandocpp/src/graphics/window.cpp

CMakeFiles/teste.dir/src/graphics/window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/teste.dir/src/graphics/window.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joao/CLionProjects/testandocpp/src/graphics/window.cpp > CMakeFiles/teste.dir/src/graphics/window.cpp.i

CMakeFiles/teste.dir/src/graphics/window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/teste.dir/src/graphics/window.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joao/CLionProjects/testandocpp/src/graphics/window.cpp -o CMakeFiles/teste.dir/src/graphics/window.cpp.s

# Object files for target teste
teste_OBJECTS = \
"CMakeFiles/teste.dir/main.cpp.o" \
"CMakeFiles/teste.dir/src/graphics/window.cpp.o"

# External object files for target teste
teste_EXTERNAL_OBJECTS =

teste: CMakeFiles/teste.dir/main.cpp.o
teste: CMakeFiles/teste.dir/src/graphics/window.cpp.o
teste: CMakeFiles/teste.dir/build.make
teste: /usr/lib/libOpenGL.so
teste: /usr/lib/libGLX.so
teste: /usr/lib/libGLU.so
teste: /usr/lib/libGLEW.so
teste: CMakeFiles/teste.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/joao/CLionProjects/testandocpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable teste"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/teste.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/teste.dir/build: teste

.PHONY : CMakeFiles/teste.dir/build

CMakeFiles/teste.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/teste.dir/cmake_clean.cmake
.PHONY : CMakeFiles/teste.dir/clean

CMakeFiles/teste.dir/depend:
	cd /home/joao/CLionProjects/testandocpp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joao/CLionProjects/testandocpp /home/joao/CLionProjects/testandocpp /home/joao/CLionProjects/testandocpp/cmake-build-debug /home/joao/CLionProjects/testandocpp/cmake-build-debug /home/joao/CLionProjects/testandocpp/cmake-build-debug/CMakeFiles/teste.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/teste.dir/depend

