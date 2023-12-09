#!/bin/bash

{
  # Cronometrando versão sequencial
  echo "Sequencial:"
  cd Sequencial || exit
  { time ./TestChain; } 2>&1
  cd .. || exit
  echo

  # Cronometrando versão OpenMP para multicore
  echo "OpenMP para multicore:"
  cd 'OpenMP para multicore' || exit
  { time ./TestChain; } 2>&1
  cd .. || exit
  echo

  # Cronometrando versão OpenMP para GPU
  echo "OpenMP para GPU:"
  cd 'OpenMP para GPU' || exit
  { time ./TestChain; } 2>&1
  cd .. || exit
  echo

  # Cronometrando versão CUDA para GPU
  echo "CUDA para GPU:"
  cd 'CUDA para GPU' || exit
  { time ./TestChain; } 2>&1
  cd .. || exit
  echo

} | tee teste_$(date "+%d-%m-%Y_%H:%M:%S").txt