cmake_minimum_required(VERSION 3.10)
add_definitions(-std=c++11)
project(MultiThreading)

set(CMAKE_CXX_FLAGS "-pthread -Wno-dev ")          ############For including pthread or make will give undefined reference error


#Bring the headers, such as Student.h into the project
include_directories(include)
include_directories(src)


#Can manually add the sources using the set command as follows:
#set(SOURCES src/mainapp.cpp src/Student.cpp)

add_subdirectory(tst)              #####for it to work it should have its own cmakelists.txt
add_subdirectory(lib/googletest)



#However, the file(GLOB...) allows for wildcard additions:
file(GLOB SOURCES "src/*.cpp")

add_executable(multithreading ${SOURCES})

add_library(${CMAKE_PROJECT_NAME}_lib STATIC ${SOURCES})  
