#!/bin/bash

cat sha256.h > TestChain.cpp
cat sha256.cpp >> TestChain.cpp
cat Block.h >> TestChain.cpp
cat Block.cpp >> TestChain.cpp
cat Blockchain.h >> TestChain.cpp
cat Blockchain.cpp >> TestChain.cpp
cat main.cpp >> TestChain.cpp
gcc8 -lstdc++ -o TestChain -std=c++11 -x c++ TestChain.cpp

cat sha256.h > TestSha256_.cpp
cat sha256.cpp >> TestSha256_.cpp
cat TestSha256.cpp >> TestSha256_.cpp
gcc8 -lstdc++ -o TestSha256 -std=c++11 -x c++ TestSha256_.cpp