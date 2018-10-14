
Compiling using mpicc:
mpicc -o aquad1 aquad1.c -lm

Compiling using CMake:
ccmake .
make

Distributing files across cluster:
*Make sure the t2 directory exists on the user home*

mrcp all aquad1 t2/aquad1
mrcp all aquad2 t2/aquad2

Running the tasks on the cluster:
mpirun -np 2 ./aquad1 1 20
mpirun -np 2 ./aquad2 1 20 32
