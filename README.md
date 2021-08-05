
Compiling using mpicc:
mpicc -o aquad1 aquad1.c -lm

Compiling using CMake:
ccmake .
make

Running the tasks on the cluster (example for 8 cores and 32 tasks on aquad2):
mpirun -hostfile host_file -np 8 ./aquad1 0 1
mpirun -hostfile host_file -np 8 ./aquad2 0 1 32
mpirun -hostfile host_file -np 8 ./aquad1 0 1

host_file must contain "localhost" and all the other cluster nodes (separator = \n)
