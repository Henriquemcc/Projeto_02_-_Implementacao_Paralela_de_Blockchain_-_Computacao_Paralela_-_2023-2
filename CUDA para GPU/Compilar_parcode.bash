#!/bin/bash

nvcc -std=c++11 main.cpp Block.cpp Blockchain.cpp sha256.cu -o TestChain
nvcc -std=c++11 TestSha256.cpp sha256.cu -o TestSha256