#!/bin/bash

{
  cat sha256.h
  cat sha256.cpp
  cat Block.h
  cat Block.cpp
  cat Blockchain.h
  cat Blockchain.cpp
  cat main.cpp
} > TestChain.cpp

gcc8 -lstdc++ -o TestChain -std=c++11 -x c++ TestChain.cpp

{
  cat sha256.h
  cat sha256.cpp
  cat TestSha256.cpp
} > TestSha256_.cpp

gcc8 -lstdc++ -o TestSha256 -std=c++11 -x c++ TestSha256_.cpp