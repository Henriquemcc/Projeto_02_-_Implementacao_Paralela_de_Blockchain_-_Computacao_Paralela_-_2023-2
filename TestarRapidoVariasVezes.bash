#!/bin/bash
# Limpando
bash ./Limpar.bash

# Compilando
bash ./Compilar.bash

# Comparando as saídas
for (( i = 0; i < 200; i++ )); do
    bash ./CompararSaidasSha256.bash
done
