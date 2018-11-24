cmake_minimum_required (VERSION 3.9)
project (TSP)

find_package(OpenMP)

find_package(MPI REQUIRED)

include_directories(${MPI_INCLUDE_PATH})

add_executable(main main.c)
target_link_libraries(main ${MPI_LIBRARIES} m)
