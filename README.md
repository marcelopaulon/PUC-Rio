
Compiling using mpicc:
mpicc -o aquad1 aquad1.c -lm

Compiling using CMake:
xxxxxxxx TODO

Distributing files across cluster:
*Make sure the t2 directory exists on the user home*

mrcp all aquad1 t2/aquad1
mrcp all aquad2 t2/aquad2

Running the tasks on the cluster:
mpirun -np 2 --hostfile host_file ./aquad1 1 20
mpirun -np 2 --hostfile host_file ./aquad2 1 20 32

Sample host_file:

10.0.0.10 n00
10.0.0.11 n01
10.0.0.12 n02
10.0.0.13 n03
10.0.0.14 n04
10.0.0.15 n05
10.0.0.16 n06
10.0.0.17 n07