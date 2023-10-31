cmake_minimum_required(VERSION 3.26)
project(Sequencial)

set(CMAKE_CXX_STANDARD 11)

include_directories(.)

add_executable(Sequencial Block.cpp Block.h Blockchain.cpp Blockchain.h main.cpp sha256.cpp sha256.h)

target_link_libraries(Sequencial PUBLIC stdc++)