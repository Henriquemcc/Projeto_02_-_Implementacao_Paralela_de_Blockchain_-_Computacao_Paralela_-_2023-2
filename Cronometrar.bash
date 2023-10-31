#!/bin/bash

# Cronometrando versão sequencial
cd Sequencial || exit
tempo_sequencial=$( { time ./TestChain > /dev/null ; } 2>&1 )
cd .. || exit

# Cronometrando versão OpenMP para multicore
cd 'OpenMP para multicore' || exit
tempo_openmp_multicore=$( { time ./TestChain > /dev/null ; } 2>&1 )
cd .. || exit

# Cronometrando versão OpenMP para GPU
cd 'OpenMP para GPU' || exit
tempo_openmp_gpu=$( { time ./TestChain > /dev/null ; } 2>&1 )
cd .. || exit

# Cronometrando versão CUDA para GPU
cd 'CUDA para GPU' || exit
tempo_cuda_gpu=$( { time ./TestChain > /dev/null ; } 2>&1 )
cd .. || exit

# Imprimindo o tempo gasto
echo "Tempo sequencial:"
echo "$tempo_sequencial"
echo

echo "Tempo OpenMP para multicore:"
echo "$tempo_openmp_multicore"
echo

echo "Tempo OpenMP para GPU:"
echo "$tempo_openmp_gpu"
echo

echo "Tempo CUDA para GPU:"
echo "$tempo_cuda_gpu"
echo