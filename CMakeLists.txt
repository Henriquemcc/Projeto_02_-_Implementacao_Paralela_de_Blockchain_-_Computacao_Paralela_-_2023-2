cmake_minimum_required(VERSION 3.26)
project(Projeto_02_-_Implementação_Paralela_de_Blockchain)
set(CMAKE_CXX_STANDARD 11)
include_directories(.)

##### Sequencial #####
add_executable(Sequencial Sequencial/Block.cpp Sequencial/Block.h Sequencial/Blockchain.cpp Sequencial/Blockchain.h Sequencial/main.cpp Sequencial/sha256.cpp Sequencial/sha256.h)
target_link_libraries(Sequencial PUBLIC stdc++)

##### OpenMP para multicore #####
add_executable(OpenMP_para_multicore "OpenMP para multicore/Block.cpp" "OpenMP para multicore/Block.h" "OpenMP para multicore/Blockchain.cpp" "OpenMP para multicore/Blockchain.h" "OpenMP para multicore/main.cpp" "OpenMP para multicore/sha256.cpp" "OpenMP para multicore/sha256.h")
target_link_libraries(OpenMP_para_multicore PUBLIC stdc++)

##### OpenMP para GPU #####
add_executable(OpenMP_para_GPU "OpenMP para GPU/Block.cpp" "OpenMP para GPU/Block.h" "OpenMP para GPU/Blockchain.cpp" "OpenMP para GPU/Blockchain.h" "OpenMP para GPU/main.cpp" "OpenMP para GPU/sha256.cpp" "OpenMP para GPU/sha256.h")
target_link_libraries(OpenMP_para_GPU PUBLIC stdc++)

##### CUDA para GPU #####
# Find CUDA package
find_package(CUDA REQUIRED)

# Set the CUDA source files
set(CUDA_SOURCE_FILES "CUDA para GPU/Block.cpp" "CUDA para GPU/Block.h" "CUDA para GPU/Blockchain.cpp" "CUDA para GPU/Blockchain.h" "CUDA para GPU/main.cpp" "CUDA para GPU/sha256.cpp" "CUDA para GPU/sha256.h")

# Set the -allow-unsupported-compiler flag
set(CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS} "-allow-unsupported-compiler")

cuda_add_executable(CUDA_para_GPU "CUDA para GPU/main.cpp")