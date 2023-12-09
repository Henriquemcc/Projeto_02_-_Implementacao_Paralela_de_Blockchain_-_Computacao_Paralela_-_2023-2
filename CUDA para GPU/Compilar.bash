#!/bin/bash

nvcc -allow-unsupported-compiler main.cpp Block.cpp Blockchain.cpp sha256.cu -o TestChain
nvcc -allow-unsupported-compiler TestSha256.cpp sha256.cu -o TestSha256