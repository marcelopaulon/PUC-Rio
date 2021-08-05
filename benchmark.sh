#!/bin/bash
set -x

echo Run 1

mpirun -hostfile host_file -np 1 ./aquad1 0 1
mpirun -hostfile host_file -np 2 ./aquad1 0 1
mpirun -hostfile host_file -np 4 ./aquad1 0 1
mpirun -hostfile host_file -np 8 ./aquad1 0 1
mpirun -hostfile host_file -np 10 ./aquad1 0 1

mpirun -hostfile host_file -np 2 ./aquad2 0 1 2
mpirun -hostfile host_file -np 4 ./aquad2 0 1 4
mpirun -hostfile host_file -np 8 ./aquad2 0 1 8
mpirun -hostfile host_file -np 10 ./aquad2 0 1 8
mpirun -hostfile host_file -np 2 ./aquad2 0 1 10
mpirun -hostfile host_file -np 4 ./aquad2 0 1 10
mpirun -hostfile host_file -np 8 ./aquad2 0 1 10
mpirun -hostfile host_file -np 10 ./aquad2 0 1 10
mpirun -hostfile host_file -np 2 ./aquad2 0 1 1000
mpirun -hostfile host_file -np 4 ./aquad2 0 1 1000
mpirun -hostfile host_file -np 8 ./aquad2 0 1 1000
mpirun -hostfile host_file -np 10 ./aquad2 0 1 1000

mpirun -hostfile host_file -np 2 ./aquad3 0 1
mpirun -hostfile host_file -np 4 ./aquad3 0 1
mpirun -hostfile host_file -np 8 ./aquad3 0 1
mpirun -hostfile host_file -np 10 ./aquad3 0 1

mpirun -hostfile host_file -np 2 ./aquad3-version2 0 1
mpirun -hostfile host_file -np 4 ./aquad3-version2 0 1
mpirun -hostfile host_file -np 8 ./aquad3-version2 0 1
mpirun -hostfile host_file -np 10 ./aquad3-version2 0 1

echo Run 2

mpirun -hostfile host_file -np 1 ./aquad1 0 1
mpirun -hostfile host_file -np 2 ./aquad1 0 1
mpirun -hostfile host_file -np 4 ./aquad1 0 1
mpirun -hostfile host_file -np 8 ./aquad1 0 1
mpirun -hostfile host_file -np 10 ./aquad1 0 1

mpirun -hostfile host_file -np 2 ./aquad2 0 1 2
mpirun -hostfile host_file -np 4 ./aquad2 0 1 4
mpirun -hostfile host_file -np 8 ./aquad2 0 1 8
mpirun -hostfile host_file -np 10 ./aquad2 0 1 8
mpirun -hostfile host_file -np 2 ./aquad2 0 1 10
mpirun -hostfile host_file -np 4 ./aquad2 0 1 10
mpirun -hostfile host_file -np 8 ./aquad2 0 1 10
mpirun -hostfile host_file -np 10 ./aquad2 0 1 10
mpirun -hostfile host_file -np 2 ./aquad2 0 1 1000
mpirun -hostfile host_file -np 4 ./aquad2 0 1 1000
mpirun -hostfile host_file -np 8 ./aquad2 0 1 1000
mpirun -hostfile host_file -np 10 ./aquad2 0 1 1000

mpirun -hostfile host_file -np 2 ./aquad3 0 1
mpirun -hostfile host_file -np 4 ./aquad3 0 1
mpirun -hostfile host_file -np 8 ./aquad3 0 1
mpirun -hostfile host_file -np 10 ./aquad3 0 1

mpirun -hostfile host_file -np 2 ./aquad3-version2 0 1
mpirun -hostfile host_file -np 4 ./aquad3-version2 0 1
mpirun -hostfile host_file -np 8 ./aquad3-version2 0 1
mpirun -hostfile host_file -np 10 ./aquad3-version2 0 1

echo Run 3

mpirun -hostfile host_file -np 1 ./aquad1 0 1
mpirun -hostfile host_file -np 2 ./aquad1 0 1
mpirun -hostfile host_file -np 4 ./aquad1 0 1
mpirun -hostfile host_file -np 8 ./aquad1 0 1
mpirun -hostfile host_file -np 10 ./aquad1 0 1

mpirun -hostfile host_file -np 2 ./aquad2 0 1 2
mpirun -hostfile host_file -np 4 ./aquad2 0 1 4
mpirun -hostfile host_file -np 8 ./aquad2 0 1 8
mpirun -hostfile host_file -np 10 ./aquad2 0 1 8
mpirun -hostfile host_file -np 2 ./aquad2 0 1 10
mpirun -hostfile host_file -np 4 ./aquad2 0 1 10
mpirun -hostfile host_file -np 8 ./aquad2 0 1 10
mpirun -hostfile host_file -np 10 ./aquad2 0 1 10
mpirun -hostfile host_file -np 2 ./aquad2 0 1 1000
mpirun -hostfile host_file -np 4 ./aquad2 0 1 1000
mpirun -hostfile host_file -np 8 ./aquad2 0 1 1000
mpirun -hostfile host_file -np 10 ./aquad2 0 1 1000

mpirun -hostfile host_file -np 2 ./aquad3 0 1
mpirun -hostfile host_file -np 4 ./aquad3 0 1
mpirun -hostfile host_file -np 8 ./aquad3 0 1
mpirun -hostfile host_file -np 10 ./aquad3 0 1

mpirun -hostfile host_file -np 2 ./aquad3-version2 0 1
mpirun -hostfile host_file -np 4 ./aquad3-version2 0 1
mpirun -hostfile host_file -np 8 ./aquad3-version2 0 1
mpirun -hostfile host_file -np 10 ./aquad3-version2 0 1