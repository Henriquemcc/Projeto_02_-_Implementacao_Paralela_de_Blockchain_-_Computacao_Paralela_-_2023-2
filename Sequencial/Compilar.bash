#!/bin/bash

gcc -lstdc++ -o TestChain -std=c++11 -x c++ main.cpp Block.cpp Blockchain.cpp sha256.cpp
gcc -lstdc++ -o TestSha256 -std=c++11 -x c++ TestSha256.cpp sha256.cpp