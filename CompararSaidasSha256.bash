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
./TestSha256 > saida_sha256.txt
cd .. || exit

# Executando versão OpenMP para multicore
cd 'OpenMP para multicore' || exit
./TestSha256 > saida_sha256.txt
cd .. || exit

# Executando versão OpenMP para GPU
cd 'OpenMP para GPU' || exit
./TestSha256 > saida_sha256.txt
cd .. || exit

# Executando versão CUDA para GPU
cd 'CUDA para GPU' || exit
./TestSha256 > saida_sha256.txt ;
cd .. || exit

# Comparando as saídas
comparar_saidas "Sequencial/saida_sha256.txt" "OpenMP para multicore/saida_sha256.txt"
comparar_saidas "Sequencial/saida_sha256.txt" "OpenMP para GPU/saida_sha256.txt"
comparar_saidas "Sequencial/saida_sha256.txt" "CUDA para GPU/saida_sha256.txt"