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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/kosta_prac/tcp_multi_thread

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/kosta_prac/tcp_multi_thread

# Include any dependencies generated for this target.
include CMakeFiles/threadModule.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/threadModule.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/threadModule.dir/flags.make

CMakeFiles/threadModule.dir/source/clnt_connection.c.o: CMakeFiles/threadModule.dir/flags.make
CMakeFiles/threadModule.dir/source/clnt_connection.c.o: source/clnt_connection.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/kosta_prac/tcp_multi_thread/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/threadModule.dir/source/clnt_connection.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/threadModule.dir/source/clnt_connection.c.o -c /home/pi/kosta_prac/tcp_multi_thread/source/clnt_connection.c

CMakeFiles/threadModule.dir/source/clnt_connection.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/threadModule.dir/source/clnt_connection.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/kosta_prac/tcp_multi_thread/source/clnt_connection.c > CMakeFiles/threadModule.dir/source/clnt_connection.c.i

CMakeFiles/threadModule.dir/source/clnt_connection.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/threadModule.dir/source/clnt_connection.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/kosta_prac/tcp_multi_thread/source/clnt_connection.c -o CMakeFiles/threadModule.dir/source/clnt_connection.c.s

CMakeFiles/threadModule.dir/source/send_data.c.o: CMakeFiles/threadModule.dir/flags.make
CMakeFiles/threadModule.dir/source/send_data.c.o: source/send_data.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/kosta_prac/tcp_multi_thread/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/threadModule.dir/source/send_data.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/threadModule.dir/source/send_data.c.o -c /home/pi/kosta_prac/tcp_multi_thread/source/send_data.c

CMakeFiles/threadModule.dir/source/send_data.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/threadModule.dir/source/send_data.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/kosta_prac/tcp_multi_thread/source/send_data.c > CMakeFiles/threadModule.dir/source/send_data.c.i

CMakeFiles/threadModule.dir/source/send_data.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/threadModule.dir/source/send_data.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/kosta_prac/tcp_multi_thread/source/send_data.c -o CMakeFiles/threadModule.dir/source/send_data.c.s

CMakeFiles/threadModule.dir/source/send_error.c.o: CMakeFiles/threadModule.dir/flags.make
CMakeFiles/threadModule.dir/source/send_error.c.o: source/send_error.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/kosta_prac/tcp_multi_thread/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/threadModule.dir/source/send_error.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/threadModule.dir/source/send_error.c.o -c /home/pi/kosta_prac/tcp_multi_thread/source/send_error.c

CMakeFiles/threadModule.dir/source/send_error.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/threadModule.dir/source/send_error.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/kosta_prac/tcp_multi_thread/source/send_error.c > CMakeFiles/threadModule.dir/source/send_error.c.i

CMakeFiles/threadModule.dir/source/send_error.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/threadModule.dir/source/send_error.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/kosta_prac/tcp_multi_thread/source/send_error.c -o CMakeFiles/threadModule.dir/source/send_error.c.s

CMakeFiles/threadModule.dir/source/send_ok.c.o: CMakeFiles/threadModule.dir/flags.make
CMakeFiles/threadModule.dir/source/send_ok.c.o: source/send_ok.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/kosta_prac/tcp_multi_thread/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/threadModule.dir/source/send_ok.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/threadModule.dir/source/send_ok.c.o -c /home/pi/kosta_prac/tcp_multi_thread/source/send_ok.c

CMakeFiles/threadModule.dir/source/send_ok.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/threadModule.dir/source/send_ok.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/kosta_prac/tcp_multi_thread/source/send_ok.c > CMakeFiles/threadModule.dir/source/send_ok.c.i

CMakeFiles/threadModule.dir/source/send_ok.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/threadModule.dir/source/send_ok.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/kosta_prac/tcp_multi_thread/source/send_ok.c -o CMakeFiles/threadModule.dir/source/send_ok.c.s

CMakeFiles/threadModule.dir/source/webserver.c.o: CMakeFiles/threadModule.dir/flags.make
CMakeFiles/threadModule.dir/source/webserver.c.o: source/webserver.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/kosta_prac/tcp_multi_thread/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/threadModule.dir/source/webserver.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/threadModule.dir/source/webserver.c.o -c /home/pi/kosta_prac/tcp_multi_thread/source/webserver.c

CMakeFiles/threadModule.dir/source/webserver.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/threadModule.dir/source/webserver.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/kosta_prac/tcp_multi_thread/source/webserver.c > CMakeFiles/threadModule.dir/source/webserver.c.i

CMakeFiles/threadModule.dir/source/webserver.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/threadModule.dir/source/webserver.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/kosta_prac/tcp_multi_thread/source/webserver.c -o CMakeFiles/threadModule.dir/source/webserver.c.s

# Object files for target threadModule
threadModule_OBJECTS = \
"CMakeFiles/threadModule.dir/source/clnt_connection.c.o" \
"CMakeFiles/threadModule.dir/source/send_data.c.o" \
"CMakeFiles/threadModule.dir/source/send_error.c.o" \
"CMakeFiles/threadModule.dir/source/send_ok.c.o" \
"CMakeFiles/threadModule.dir/source/webserver.c.o"

# External object files for target threadModule
threadModule_EXTERNAL_OBJECTS =

libthreadModule.a: CMakeFiles/threadModule.dir/source/clnt_connection.c.o
libthreadModule.a: CMakeFiles/threadModule.dir/source/send_data.c.o
libthreadModule.a: CMakeFiles/threadModule.dir/source/send_error.c.o
libthreadModule.a: CMakeFiles/threadModule.dir/source/send_ok.c.o
libthreadModule.a: CMakeFiles/threadModule.dir/source/webserver.c.o
libthreadModule.a: CMakeFiles/threadModule.dir/build.make
libthreadModule.a: CMakeFiles/threadModule.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/kosta_prac/tcp_multi_thread/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C static library libthreadModule.a"
	$(CMAKE_COMMAND) -P CMakeFiles/threadModule.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/threadModule.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/threadModule.dir/build: libthreadModule.a

.PHONY : CMakeFiles/threadModule.dir/build

CMakeFiles/threadModule.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/threadModule.dir/cmake_clean.cmake
.PHONY : CMakeFiles/threadModule.dir/clean

CMakeFiles/threadModule.dir/depend:
	cd /home/pi/kosta_prac/tcp_multi_thread && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/kosta_prac/tcp_multi_thread /home/pi/kosta_prac/tcp_multi_thread /home/pi/kosta_prac/tcp_multi_thread /home/pi/kosta_prac/tcp_multi_thread /home/pi/kosta_prac/tcp_multi_thread/CMakeFiles/threadModule.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/threadModule.dir/depend

