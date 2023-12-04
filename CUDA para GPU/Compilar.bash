#!/bin/bash

nvcc main.cpp Block.cpp Blockchain.cpp sha256.cpp -o TestChain
nvcc TestSha256.cpp sha256.cpp -o TestSha256