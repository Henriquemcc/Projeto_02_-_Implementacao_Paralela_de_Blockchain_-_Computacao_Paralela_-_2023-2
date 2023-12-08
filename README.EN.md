[Versão em Português](README.EN.md)

# Project 02 - Parallel Implementation of Blockchain - Parallel Computation - 2023-2

## Statement

The group must implement parallelize the following blockchain application (block mining):

http://davenash.com/2017/10/build-a-blockchain-with-c/

After downloading and unzipping the project on github (https://github.com/teaandcode/TestChain/archive/master.zip), compile the code with the following command on the PARCODE server (it does not run on older versions (< 6.x )) from GCC:

```
$ gcc8 -lstdc++ -o TestChain -std=c++11 -x c++ main.cpp Block.cpp Blockchain.cpp sha256.cpp
```

To execute:

```
$ time ./TestChain
```

The group must implement 3 parallel versions of the code: i) OpenMP for multicore (CPU); ii) OpenMP for GPU; and iii) CUDA for GPU. The group must measure the execution time for each of the versions, in addition to the sequential version, and document it in a readme.txt file. Versions must present scalable speedup in relation to the sequential version.

*Remember*: all groups must prepare a video of no more than 7 minutes. for presentation during class time. Same procedure as was adopted for Project 01. If there is no presentation, the work will not be evaluated. All members must contribute to the presentation. Presentation will take place during class time on the day of delivery.

*Note*: The group must deliver a .zip file with three different folders, one for each implemented version.

## Group members

[Fernanda Ribeiro Passos Cirino](https://github.com/FernandaPassosc)

[Henrique Mendonça Castelar Campos](https://github.com/Henriquemcc)

[Ludmila Bruna Santos Nascimento](https://github.com/ludbruna)

[Marcos Ani Cury Vinagre Silva](https://github.com/MarcosAniCury)

