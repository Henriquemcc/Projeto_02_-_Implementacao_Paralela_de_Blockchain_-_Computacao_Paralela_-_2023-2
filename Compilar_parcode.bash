#!/bin/bash

# Compilando versão sequencial
cd Sequencial || exit
bash ./Compilar_parcode.bash
cd .. || exit

# Compilando versão OpenMP para multicore
cd 'OpenMP para multicore' || exit
bash ./Compilar_parcode.bash
cd .. || exit

# Compilando versão OpenMP para GPU
cd 'OpenMP para GPU' || exit
bash ./Compilar_parcode.bash
cd .. || exit

# Compilando versão CUDA para GPU
cd 'CUDA para GPU' || exit
bash ./Compilar_parcode.bash
cd .. || exit