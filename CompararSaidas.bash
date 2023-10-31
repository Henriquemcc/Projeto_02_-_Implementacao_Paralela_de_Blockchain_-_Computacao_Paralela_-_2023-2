#!/bin/bash

function comparar_saidas() {
    if ! diff -q "$1" "$2" &> /dev/null; then
        echo "As saídas: \"$1\" \"$2\" são diferentes"
        read -r -p "Deseja visualizar a diferença entre as saídas (s/n)? " visualizar
        if [ "$visualizar" == "s" ]; then
          vimdiff "$1" "$2"
        fi
    fi
}

# Executando versão sequencial
cd 'Sequencial' || exit
./TestChain > saida.txt
cd .. || exit

# Executando versão OpenMP para multicore
cd 'OpenMP para multicore' || exit
./TestChain > saida.txt
cd .. || exit

# Executando versão OpenMP para GPU
cd 'OpenMP para GPU' || exit
./TestChain > saida.txt
cd .. || exit

# Executando versão CUDA para GPU
cd 'CUDA para GPU' || exit
./TestChain > saida.txt ;
cd .. || exit

# Comparando as saídas
comparar_saidas "Sequencial/saida.txt" "OpenMP para multicore/saida.txt"
comparar_saidas "Sequencial/saida.txt" "OpenMP para GPU/saida.txt"
comparar_saidas "Sequencial/saida.txt" "CUDA para GPU/saida.txt"