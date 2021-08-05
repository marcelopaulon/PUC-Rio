cmake_minimum_required(VERSION 3.5)
project(T1)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

find_package(Threads)

include_directories(.)

link_directories(.)

add_executable(T1
        limitedbuffer.c
        limitedbuffer.h
        main.c)

add_definitions(-std=c++0x)# -m64)

TARGET_LINK_LIBRARIES(${PROJECT_NAME}
        ${CMAKE_THREAD_LIBS_INIT}
        )
