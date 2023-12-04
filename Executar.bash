#!/bin/bash

# Executando versão sequencial
echo "Versão sequencial"
cd Sequencial || exit
./TestChain
cd .. || exit

# Executando versão OpenMP para multicore
echo "Versão OpenMP para multicore"
cd 'OpenMP para multicore' || exit
./TestChain
cd .. || exit

# Executando versão OpenMP para GPU
echo "Versão OpenMP para GPU"
cd 'OpenMP para GPU' || exit
./TestChain
cd .. || exit

# Executando versão CUDA para GPU
echo "Versão CUDA para GPU"
cd 'CUDA para GPU' || exit
./TestChain
cd .. || exit