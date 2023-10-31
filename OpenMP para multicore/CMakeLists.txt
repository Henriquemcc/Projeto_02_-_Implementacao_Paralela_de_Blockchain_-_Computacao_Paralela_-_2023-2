cmake_minimum_required(VERSION 3.26)
project(OpenMP_para_multicore)

set(CMAKE_CXX_STANDARD 11)

include_directories(.)

add_executable(OpenMP_para_multicore Block.cpp Block.h Blockchain.cpp Blockchain.h main.cpp sha256.cpp sha256.h)

target_compile_options(OpenMP_para_multicore PRIVATE -fopenmp)

target_link_libraries(OpenMP_para_multicore PUBLIC stdc++)
