#!/bin/bash

# Limpando versão sequencial
cd Sequencial || exit
bash ./Limpar.bash
cd .. || exit

# Limpando versão OpenMP para multicore
cd 'OpenMP para multicore' || exit
bash ./Limpar.bash
cd .. || exit

# Limpando versão OpenMP para GPU
cd 'OpenMP para GPU' || exit
bash ./Limpar.bash
cd .. || exit

# Limpando versão CUDA para GPU
cd 'CUDA para GPU' || exit
bash ./Limpar.bash
cd .. || exit