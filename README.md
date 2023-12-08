[English Version](README.EN.md)

# Projeto 02 - Implementação Paralela de Blockchain - Computação Paralela - 2023-2

## Enunciado

O grupo deve implementar paralelizar a seguinte aplicação blockchain (mineração de blocos):

http://davenash.com/2017/10/build-a-blockchain-with-c/

Após baixar e descompactar o projeto no github (https://github.com/teaandcode/TestChain/archive/master.zip), compile o código com o seguinte comando no servidor PARCODE (ele não roda em versões antigas ( < 6.x)) do GCC :

```
$ gcc8 -lstdc++ -o TestChain -std=c++11 -x c++ main.cpp Block.cpp Blockchain.cpp sha256.cpp
```

Para executar:

```
$ time ./TestChain
```

O grupo deve implementar 3 versões paralelas do código: i) OpenMP para multicore (CPU); ii) OpenMP para GPU; e iii) CUDA para GPU. O grupo deve medir o tempo de execução para cada uma das versões, além da versão sequencial e documentar em um arquivo readme.txt. As versões devem apresentar speedup escalável em relação a versão sequencial.

*Lembrando*: todos os grupos devem preparar um vídeo de no máximo 7 min. para apresentação no horário da aula. Mesmo procedimento que foi adotado para o Projeto 01. Se não houver apresentação, o trabalho não será avaliado. Todos os integrantes devem contribuir com a apresentação. Apresentação ocorrerá no horário da aula do dia da entrega.

*Obs*: O grupo deve entregar um arquivo .zip com três pastas diferentes, uma para cada versão implementada.

## Membros do grupo

[Fernanda Ribeiro Passos Cirino](https://github.com/FernandaPassosc)

[Henrique Mendonça Castelar Campos](https://github.com/Henriquemcc)

[Ludmila Bruna Santos Nascimento](https://github.com/ludbruna)

[Marcos Ani Cury Vinagre Silva](https://github.com/MarcosAniCury)

