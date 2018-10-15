#!/bin/bash
set -x

mpirun -np 1 ./aquad1 0 1
mpirun -np 2 ./aquad1 0 1
mpirun -np 4 ./aquad1 0 1
mpirun -np 8 ./aquad1 0 1
mpirun -np 10 ./aquad1 0 1

mpirun -np 2 ./aquad2 0 1 2
mpirun -np 4 ./aquad2 0 1 4
mpirun -np 8 ./aquad2 0 1 8
mpirun -np 10 ./aquad2 0 1 8
mpirun -np 2 ./aquad2 0 1 10
mpirun -np 4 ./aquad2 0 1 10
mpirun -np 8 ./aquad2 0 1 10
mpirun -np 10 ./aquad2 0 1 10
mpirun -np 2 ./aquad2 0 1 1000
mpirun -np 4 ./aquad2 0 1 1000
mpirun -np 8 ./aquad2 0 1 1000
mpirun -np 10 ./aquad2 0 1 1000

mpirun -np 2 ./aquad3 0 1
mpirun -np 4 ./aquad3 0 1
mpirun -np 8 ./aquad3 0 1
mpirun -np 10 ./aquad3 0 1