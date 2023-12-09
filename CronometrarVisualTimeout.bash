#!/bin/bash

# Cronometrando versão sequencial
cd Sequencial || exit
{
 echo "Sequencial:"
 { timeout 15m time ./TestChain; } 2>&1
 echo
} | tee teste_sequencial_$(date "+%d-%m-%Y_%H:%M:%S").txt
cd .. || exit

# Cronometrando versão OpenMP para multicore
cd 'OpenMP para multicore' || exit
{
	echo "OpenMP para multicore:"
	{ timeout 15m time ./TestChain; } 2>&1
  echo
} | tee teste_open_mp_multicore_$(date "+%d-%m-%Y_%H:%M:%S").txt
cd .. || exit

# Cronometrando versão OpenMP para GPU

cd 'OpenMP para GPU' || exit
{
  echo "OpenMP para GPU:"
  { timeout 15m time ./TestChain; } 2>&1
  echo
} | tee teste_open_mp_gpu_$(date "+%d-%m-%Y_%H:%M:%S").txt
cd .. || exit

# Cronometrando versão CUDA para GPU
cd 'CUDA para GPU' || exit
{
  echo "CUDA para GPU:"
  { timeout 15m time ./TestChain; } 2>&1
  echo
} | tee teste_cuda_gpu_$(date "+%d-%m-%Y_%H:%M:%S").txt
cd .. || exit
