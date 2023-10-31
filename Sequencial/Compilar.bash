#!/bin/bash

gcc -lstdc++ -o TestChain -std=c++11 -x c++ main.cpp Block.cpp Blockchain.cpp sha256.cpp