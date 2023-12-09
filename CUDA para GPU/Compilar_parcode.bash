#!/bin/bash

gcc_path=$(whereis gcc8 | cut -d' ' -f2)
nvcc -allow-unsupported-compiler --compiler-bindir="$gcc_path" main.cpp Block.cpp Blockchain.cpp sha256.cu -o TestChain
nvcc -allow-unsupported-compiler --compiler-bindir="$gcc_path" TestSha256.cpp sha256.cu -o TestSha256