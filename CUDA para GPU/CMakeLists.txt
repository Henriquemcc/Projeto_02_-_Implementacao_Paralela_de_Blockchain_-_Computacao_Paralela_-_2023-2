cmake_minimum_required(VERSION 3.26)
project(CUDA_para_GPU)
set(CMAKE_CXX_STANDARD 11)

include_directories(.)

# Find CUDA package
find_package(CUDA REQUIRED)

# Set the CUDA source files
set(CUDA_SOURCE_FILES Block.cpp Block.h Blockchain.cpp Blockchain.h main.cpp sha256.cpp sha256.h)

# Set the -allow-unsupported-compiler flag
set(CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS} "-allow-unsupported-compiler")

cuda_add_executable(CUDA_para_GPU Block.cpp Block.h Blockchain.cpp Blockchain.h main.cpp sha256.cpp sha256.h)