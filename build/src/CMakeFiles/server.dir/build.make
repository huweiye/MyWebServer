# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/huweiye/MyWebServer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/huweiye/MyWebServer/build

# Include any dependencies generated for this target.
include src/CMakeFiles/server.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/server.dir/flags.make

src/CMakeFiles/server.dir/AsyncLogging.cpp.o: src/CMakeFiles/server.dir/flags.make
src/CMakeFiles/server.dir/AsyncLogging.cpp.o: ../src/AsyncLogging.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huweiye/MyWebServer/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/server.dir/AsyncLogging.cpp.o"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/server.dir/AsyncLogging.cpp.o -c /home/huweiye/MyWebServer/src/AsyncLogging.cpp

src/CMakeFiles/server.dir/AsyncLogging.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/AsyncLogging.cpp.i"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huweiye/MyWebServer/src/AsyncLogging.cpp > CMakeFiles/server.dir/AsyncLogging.cpp.i

src/CMakeFiles/server.dir/AsyncLogging.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/AsyncLogging.cpp.s"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huweiye/MyWebServer/src/AsyncLogging.cpp -o CMakeFiles/server.dir/AsyncLogging.cpp.s

src/CMakeFiles/server.dir/AsyncLogging.cpp.o.requires:
.PHONY : src/CMakeFiles/server.dir/AsyncLogging.cpp.o.requires

src/CMakeFiles/server.dir/AsyncLogging.cpp.o.provides: src/CMakeFiles/server.dir/AsyncLogging.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/server.dir/build.make src/CMakeFiles/server.dir/AsyncLogging.cpp.o.provides.build
.PHONY : src/CMakeFiles/server.dir/AsyncLogging.cpp.o.provides

src/CMakeFiles/server.dir/AsyncLogging.cpp.o.provides.build: src/CMakeFiles/server.dir/AsyncLogging.cpp.o

src/CMakeFiles/server.dir/CountDownLatch.cpp.o: src/CMakeFiles/server.dir/flags.make
src/CMakeFiles/server.dir/CountDownLatch.cpp.o: ../src/CountDownLatch.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huweiye/MyWebServer/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/server.dir/CountDownLatch.cpp.o"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/server.dir/CountDownLatch.cpp.o -c /home/huweiye/MyWebServer/src/CountDownLatch.cpp

src/CMakeFiles/server.dir/CountDownLatch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/CountDownLatch.cpp.i"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huweiye/MyWebServer/src/CountDownLatch.cpp > CMakeFiles/server.dir/CountDownLatch.cpp.i

src/CMakeFiles/server.dir/CountDownLatch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/CountDownLatch.cpp.s"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huweiye/MyWebServer/src/CountDownLatch.cpp -o CMakeFiles/server.dir/CountDownLatch.cpp.s

src/CMakeFiles/server.dir/CountDownLatch.cpp.o.requires:
.PHONY : src/CMakeFiles/server.dir/CountDownLatch.cpp.o.requires

src/CMakeFiles/server.dir/CountDownLatch.cpp.o.provides: src/CMakeFiles/server.dir/CountDownLatch.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/server.dir/build.make src/CMakeFiles/server.dir/CountDownLatch.cpp.o.provides.build
.PHONY : src/CMakeFiles/server.dir/CountDownLatch.cpp.o.provides

src/CMakeFiles/server.dir/CountDownLatch.cpp.o.provides.build: src/CMakeFiles/server.dir/CountDownLatch.cpp.o

src/CMakeFiles/server.dir/FileUtil.cpp.o: src/CMakeFiles/server.dir/flags.make
src/CMakeFiles/server.dir/FileUtil.cpp.o: ../src/FileUtil.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huweiye/MyWebServer/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/server.dir/FileUtil.cpp.o"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/server.dir/FileUtil.cpp.o -c /home/huweiye/MyWebServer/src/FileUtil.cpp

src/CMakeFiles/server.dir/FileUtil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/FileUtil.cpp.i"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huweiye/MyWebServer/src/FileUtil.cpp > CMakeFiles/server.dir/FileUtil.cpp.i

src/CMakeFiles/server.dir/FileUtil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/FileUtil.cpp.s"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huweiye/MyWebServer/src/FileUtil.cpp -o CMakeFiles/server.dir/FileUtil.cpp.s

src/CMakeFiles/server.dir/FileUtil.cpp.o.requires:
.PHONY : src/CMakeFiles/server.dir/FileUtil.cpp.o.requires

src/CMakeFiles/server.dir/FileUtil.cpp.o.provides: src/CMakeFiles/server.dir/FileUtil.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/server.dir/build.make src/CMakeFiles/server.dir/FileUtil.cpp.o.provides.build
.PHONY : src/CMakeFiles/server.dir/FileUtil.cpp.o.provides

src/CMakeFiles/server.dir/FileUtil.cpp.o.provides.build: src/CMakeFiles/server.dir/FileUtil.cpp.o

src/CMakeFiles/server.dir/LogFile.cpp.o: src/CMakeFiles/server.dir/flags.make
src/CMakeFiles/server.dir/LogFile.cpp.o: ../src/LogFile.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huweiye/MyWebServer/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/server.dir/LogFile.cpp.o"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/server.dir/LogFile.cpp.o -c /home/huweiye/MyWebServer/src/LogFile.cpp

src/CMakeFiles/server.dir/LogFile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/LogFile.cpp.i"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huweiye/MyWebServer/src/LogFile.cpp > CMakeFiles/server.dir/LogFile.cpp.i

src/CMakeFiles/server.dir/LogFile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/LogFile.cpp.s"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huweiye/MyWebServer/src/LogFile.cpp -o CMakeFiles/server.dir/LogFile.cpp.s

src/CMakeFiles/server.dir/LogFile.cpp.o.requires:
.PHONY : src/CMakeFiles/server.dir/LogFile.cpp.o.requires

src/CMakeFiles/server.dir/LogFile.cpp.o.provides: src/CMakeFiles/server.dir/LogFile.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/server.dir/build.make src/CMakeFiles/server.dir/LogFile.cpp.o.provides.build
.PHONY : src/CMakeFiles/server.dir/LogFile.cpp.o.provides

src/CMakeFiles/server.dir/LogFile.cpp.o.provides.build: src/CMakeFiles/server.dir/LogFile.cpp.o

src/CMakeFiles/server.dir/Logging.cpp.o: src/CMakeFiles/server.dir/flags.make
src/CMakeFiles/server.dir/Logging.cpp.o: ../src/Logging.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huweiye/MyWebServer/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/server.dir/Logging.cpp.o"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/server.dir/Logging.cpp.o -c /home/huweiye/MyWebServer/src/Logging.cpp

src/CMakeFiles/server.dir/Logging.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/Logging.cpp.i"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huweiye/MyWebServer/src/Logging.cpp > CMakeFiles/server.dir/Logging.cpp.i

src/CMakeFiles/server.dir/Logging.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/Logging.cpp.s"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huweiye/MyWebServer/src/Logging.cpp -o CMakeFiles/server.dir/Logging.cpp.s

src/CMakeFiles/server.dir/Logging.cpp.o.requires:
.PHONY : src/CMakeFiles/server.dir/Logging.cpp.o.requires

src/CMakeFiles/server.dir/Logging.cpp.o.provides: src/CMakeFiles/server.dir/Logging.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/server.dir/build.make src/CMakeFiles/server.dir/Logging.cpp.o.provides.build
.PHONY : src/CMakeFiles/server.dir/Logging.cpp.o.provides

src/CMakeFiles/server.dir/Logging.cpp.o.provides.build: src/CMakeFiles/server.dir/Logging.cpp.o

src/CMakeFiles/server.dir/Thread.cpp.o: src/CMakeFiles/server.dir/flags.make
src/CMakeFiles/server.dir/Thread.cpp.o: ../src/Thread.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huweiye/MyWebServer/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/server.dir/Thread.cpp.o"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/server.dir/Thread.cpp.o -c /home/huweiye/MyWebServer/src/Thread.cpp

src/CMakeFiles/server.dir/Thread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/Thread.cpp.i"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huweiye/MyWebServer/src/Thread.cpp > CMakeFiles/server.dir/Thread.cpp.i

src/CMakeFiles/server.dir/Thread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/Thread.cpp.s"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huweiye/MyWebServer/src/Thread.cpp -o CMakeFiles/server.dir/Thread.cpp.s

src/CMakeFiles/server.dir/Thread.cpp.o.requires:
.PHONY : src/CMakeFiles/server.dir/Thread.cpp.o.requires

src/CMakeFiles/server.dir/Thread.cpp.o.provides: src/CMakeFiles/server.dir/Thread.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/server.dir/build.make src/CMakeFiles/server.dir/Thread.cpp.o.provides.build
.PHONY : src/CMakeFiles/server.dir/Thread.cpp.o.provides

src/CMakeFiles/server.dir/Thread.cpp.o.provides.build: src/CMakeFiles/server.dir/Thread.cpp.o

src/CMakeFiles/server.dir/utils.cpp.o: src/CMakeFiles/server.dir/flags.make
src/CMakeFiles/server.dir/utils.cpp.o: ../src/utils.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huweiye/MyWebServer/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/server.dir/utils.cpp.o"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/server.dir/utils.cpp.o -c /home/huweiye/MyWebServer/src/utils.cpp

src/CMakeFiles/server.dir/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/utils.cpp.i"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huweiye/MyWebServer/src/utils.cpp > CMakeFiles/server.dir/utils.cpp.i

src/CMakeFiles/server.dir/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/utils.cpp.s"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huweiye/MyWebServer/src/utils.cpp -o CMakeFiles/server.dir/utils.cpp.s

src/CMakeFiles/server.dir/utils.cpp.o.requires:
.PHONY : src/CMakeFiles/server.dir/utils.cpp.o.requires

src/CMakeFiles/server.dir/utils.cpp.o.provides: src/CMakeFiles/server.dir/utils.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/server.dir/build.make src/CMakeFiles/server.dir/utils.cpp.o.provides.build
.PHONY : src/CMakeFiles/server.dir/utils.cpp.o.provides

src/CMakeFiles/server.dir/utils.cpp.o.provides.build: src/CMakeFiles/server.dir/utils.cpp.o

src/CMakeFiles/server.dir/threadpool.cpp.o: src/CMakeFiles/server.dir/flags.make
src/CMakeFiles/server.dir/threadpool.cpp.o: ../src/threadpool.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huweiye/MyWebServer/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/server.dir/threadpool.cpp.o"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/server.dir/threadpool.cpp.o -c /home/huweiye/MyWebServer/src/threadpool.cpp

src/CMakeFiles/server.dir/threadpool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/threadpool.cpp.i"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huweiye/MyWebServer/src/threadpool.cpp > CMakeFiles/server.dir/threadpool.cpp.i

src/CMakeFiles/server.dir/threadpool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/threadpool.cpp.s"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huweiye/MyWebServer/src/threadpool.cpp -o CMakeFiles/server.dir/threadpool.cpp.s

src/CMakeFiles/server.dir/threadpool.cpp.o.requires:
.PHONY : src/CMakeFiles/server.dir/threadpool.cpp.o.requires

src/CMakeFiles/server.dir/threadpool.cpp.o.provides: src/CMakeFiles/server.dir/threadpool.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/server.dir/build.make src/CMakeFiles/server.dir/threadpool.cpp.o.provides.build
.PHONY : src/CMakeFiles/server.dir/threadpool.cpp.o.provides

src/CMakeFiles/server.dir/threadpool.cpp.o.provides.build: src/CMakeFiles/server.dir/threadpool.cpp.o

src/CMakeFiles/server.dir/LogStream.cpp.o: src/CMakeFiles/server.dir/flags.make
src/CMakeFiles/server.dir/LogStream.cpp.o: ../src/LogStream.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huweiye/MyWebServer/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/server.dir/LogStream.cpp.o"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/server.dir/LogStream.cpp.o -c /home/huweiye/MyWebServer/src/LogStream.cpp

src/CMakeFiles/server.dir/LogStream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/LogStream.cpp.i"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huweiye/MyWebServer/src/LogStream.cpp > CMakeFiles/server.dir/LogStream.cpp.i

src/CMakeFiles/server.dir/LogStream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/LogStream.cpp.s"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huweiye/MyWebServer/src/LogStream.cpp -o CMakeFiles/server.dir/LogStream.cpp.s

src/CMakeFiles/server.dir/LogStream.cpp.o.requires:
.PHONY : src/CMakeFiles/server.dir/LogStream.cpp.o.requires

src/CMakeFiles/server.dir/LogStream.cpp.o.provides: src/CMakeFiles/server.dir/LogStream.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/server.dir/build.make src/CMakeFiles/server.dir/LogStream.cpp.o.provides.build
.PHONY : src/CMakeFiles/server.dir/LogStream.cpp.o.provides

src/CMakeFiles/server.dir/LogStream.cpp.o.provides.build: src/CMakeFiles/server.dir/LogStream.cpp.o

src/CMakeFiles/server.dir/epoll.cpp.o: src/CMakeFiles/server.dir/flags.make
src/CMakeFiles/server.dir/epoll.cpp.o: ../src/epoll.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huweiye/MyWebServer/build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/server.dir/epoll.cpp.o"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/server.dir/epoll.cpp.o -c /home/huweiye/MyWebServer/src/epoll.cpp

src/CMakeFiles/server.dir/epoll.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/epoll.cpp.i"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huweiye/MyWebServer/src/epoll.cpp > CMakeFiles/server.dir/epoll.cpp.i

src/CMakeFiles/server.dir/epoll.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/epoll.cpp.s"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huweiye/MyWebServer/src/epoll.cpp -o CMakeFiles/server.dir/epoll.cpp.s

src/CMakeFiles/server.dir/epoll.cpp.o.requires:
.PHONY : src/CMakeFiles/server.dir/epoll.cpp.o.requires

src/CMakeFiles/server.dir/epoll.cpp.o.provides: src/CMakeFiles/server.dir/epoll.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/server.dir/build.make src/CMakeFiles/server.dir/epoll.cpp.o.provides.build
.PHONY : src/CMakeFiles/server.dir/epoll.cpp.o.provides

src/CMakeFiles/server.dir/epoll.cpp.o.provides.build: src/CMakeFiles/server.dir/epoll.cpp.o

src/CMakeFiles/server.dir/timer.cpp.o: src/CMakeFiles/server.dir/flags.make
src/CMakeFiles/server.dir/timer.cpp.o: ../src/timer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huweiye/MyWebServer/build/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/server.dir/timer.cpp.o"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/server.dir/timer.cpp.o -c /home/huweiye/MyWebServer/src/timer.cpp

src/CMakeFiles/server.dir/timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/timer.cpp.i"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huweiye/MyWebServer/src/timer.cpp > CMakeFiles/server.dir/timer.cpp.i

src/CMakeFiles/server.dir/timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/timer.cpp.s"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huweiye/MyWebServer/src/timer.cpp -o CMakeFiles/server.dir/timer.cpp.s

src/CMakeFiles/server.dir/timer.cpp.o.requires:
.PHONY : src/CMakeFiles/server.dir/timer.cpp.o.requires

src/CMakeFiles/server.dir/timer.cpp.o.provides: src/CMakeFiles/server.dir/timer.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/server.dir/build.make src/CMakeFiles/server.dir/timer.cpp.o.provides.build
.PHONY : src/CMakeFiles/server.dir/timer.cpp.o.provides

src/CMakeFiles/server.dir/timer.cpp.o.provides.build: src/CMakeFiles/server.dir/timer.cpp.o

src/CMakeFiles/server.dir/main.cpp.o: src/CMakeFiles/server.dir/flags.make
src/CMakeFiles/server.dir/main.cpp.o: ../src/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huweiye/MyWebServer/build/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/server.dir/main.cpp.o"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/server.dir/main.cpp.o -c /home/huweiye/MyWebServer/src/main.cpp

src/CMakeFiles/server.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/main.cpp.i"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huweiye/MyWebServer/src/main.cpp > CMakeFiles/server.dir/main.cpp.i

src/CMakeFiles/server.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/main.cpp.s"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huweiye/MyWebServer/src/main.cpp -o CMakeFiles/server.dir/main.cpp.s

src/CMakeFiles/server.dir/main.cpp.o.requires:
.PHONY : src/CMakeFiles/server.dir/main.cpp.o.requires

src/CMakeFiles/server.dir/main.cpp.o.provides: src/CMakeFiles/server.dir/main.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/server.dir/build.make src/CMakeFiles/server.dir/main.cpp.o.provides.build
.PHONY : src/CMakeFiles/server.dir/main.cpp.o.provides

src/CMakeFiles/server.dir/main.cpp.o.provides.build: src/CMakeFiles/server.dir/main.cpp.o

src/CMakeFiles/server.dir/requestData.cpp.o: src/CMakeFiles/server.dir/flags.make
src/CMakeFiles/server.dir/requestData.cpp.o: ../src/requestData.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huweiye/MyWebServer/build/CMakeFiles $(CMAKE_PROGRESS_13)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/server.dir/requestData.cpp.o"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/server.dir/requestData.cpp.o -c /home/huweiye/MyWebServer/src/requestData.cpp

src/CMakeFiles/server.dir/requestData.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/requestData.cpp.i"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huweiye/MyWebServer/src/requestData.cpp > CMakeFiles/server.dir/requestData.cpp.i

src/CMakeFiles/server.dir/requestData.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/requestData.cpp.s"
	cd /home/huweiye/MyWebServer/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huweiye/MyWebServer/src/requestData.cpp -o CMakeFiles/server.dir/requestData.cpp.s

src/CMakeFiles/server.dir/requestData.cpp.o.requires:
.PHONY : src/CMakeFiles/server.dir/requestData.cpp.o.requires

src/CMakeFiles/server.dir/requestData.cpp.o.provides: src/CMakeFiles/server.dir/requestData.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/server.dir/build.make src/CMakeFiles/server.dir/requestData.cpp.o.provides.build
.PHONY : src/CMakeFiles/server.dir/requestData.cpp.o.provides

src/CMakeFiles/server.dir/requestData.cpp.o.provides.build: src/CMakeFiles/server.dir/requestData.cpp.o

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/AsyncLogging.cpp.o" \
"CMakeFiles/server.dir/CountDownLatch.cpp.o" \
"CMakeFiles/server.dir/FileUtil.cpp.o" \
"CMakeFiles/server.dir/LogFile.cpp.o" \
"CMakeFiles/server.dir/Logging.cpp.o" \
"CMakeFiles/server.dir/Thread.cpp.o" \
"CMakeFiles/server.dir/utils.cpp.o" \
"CMakeFiles/server.dir/threadpool.cpp.o" \
"CMakeFiles/server.dir/LogStream.cpp.o" \
"CMakeFiles/server.dir/epoll.cpp.o" \
"CMakeFiles/server.dir/timer.cpp.o" \
"CMakeFiles/server.dir/main.cpp.o" \
"CMakeFiles/server.dir/requestData.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

../bin/server: src/CMakeFiles/server.dir/AsyncLogging.cpp.o
../bin/server: src/CMakeFiles/server.dir/CountDownLatch.cpp.o
../bin/server: src/CMakeFiles/server.dir/FileUtil.cpp.o
../bin/server: src/CMakeFiles/server.dir/LogFile.cpp.o
../bin/server: src/CMakeFiles/server.dir/Logging.cpp.o
../bin/server: src/CMakeFiles/server.dir/Thread.cpp.o
../bin/server: src/CMakeFiles/server.dir/utils.cpp.o
../bin/server: src/CMakeFiles/server.dir/threadpool.cpp.o
../bin/server: src/CMakeFiles/server.dir/LogStream.cpp.o
../bin/server: src/CMakeFiles/server.dir/epoll.cpp.o
../bin/server: src/CMakeFiles/server.dir/timer.cpp.o
../bin/server: src/CMakeFiles/server.dir/main.cpp.o
../bin/server: src/CMakeFiles/server.dir/requestData.cpp.o
../bin/server: src/CMakeFiles/server.dir/build.make
../bin/server: src/CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/server"
	cd /home/huweiye/MyWebServer/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/server.dir/build: ../bin/server
.PHONY : src/CMakeFiles/server.dir/build

src/CMakeFiles/server.dir/requires: src/CMakeFiles/server.dir/AsyncLogging.cpp.o.requires
src/CMakeFiles/server.dir/requires: src/CMakeFiles/server.dir/CountDownLatch.cpp.o.requires
src/CMakeFiles/server.dir/requires: src/CMakeFiles/server.dir/FileUtil.cpp.o.requires
src/CMakeFiles/server.dir/requires: src/CMakeFiles/server.dir/LogFile.cpp.o.requires
src/CMakeFiles/server.dir/requires: src/CMakeFiles/server.dir/Logging.cpp.o.requires
src/CMakeFiles/server.dir/requires: src/CMakeFiles/server.dir/Thread.cpp.o.requires
src/CMakeFiles/server.dir/requires: src/CMakeFiles/server.dir/utils.cpp.o.requires
src/CMakeFiles/server.dir/requires: src/CMakeFiles/server.dir/threadpool.cpp.o.requires
src/CMakeFiles/server.dir/requires: src/CMakeFiles/server.dir/LogStream.cpp.o.requires
src/CMakeFiles/server.dir/requires: src/CMakeFiles/server.dir/epoll.cpp.o.requires
src/CMakeFiles/server.dir/requires: src/CMakeFiles/server.dir/timer.cpp.o.requires
src/CMakeFiles/server.dir/requires: src/CMakeFiles/server.dir/main.cpp.o.requires
src/CMakeFiles/server.dir/requires: src/CMakeFiles/server.dir/requestData.cpp.o.requires
.PHONY : src/CMakeFiles/server.dir/requires

src/CMakeFiles/server.dir/clean:
	cd /home/huweiye/MyWebServer/build/src && $(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/server.dir/clean

src/CMakeFiles/server.dir/depend:
	cd /home/huweiye/MyWebServer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/huweiye/MyWebServer /home/huweiye/MyWebServer/src /home/huweiye/MyWebServer/build /home/huweiye/MyWebServer/build/src /home/huweiye/MyWebServer/build/src/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/server.dir/depend

