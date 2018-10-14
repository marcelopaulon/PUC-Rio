#include <stdio.h>
#include <math.h>
#include "mpi.h"
#include <stdlib.h>

#define  TOL 1e-16

int n_cores;
double total_area=0;
double function(double x);
double compute_trap_area(double l, double r);
void curve_subarea(double a, double b, double area, double *sub_total);

int main(int argc, char *argv[]){
	int p_id;
	double l, r, w, a, b, trap_area, local_area;

	n_cores = atoi(argv[1]);
	l =  atoi(argv[2]);
	r =  atoi(argv[3]);
	w = (r - l)/n_cores;

	MPI_Init(&argc, &argv);
	MPI_Comm_rank(MPI_COMM_WORLD, &p_id);
	MPI_Comm_size(MPI_COMM_WORLD, &n_cores);

	a = l + p_id*w;
	b = l + (p_id + 1)*w;
	trap_area = compute_trap_area(a, b);
	printf("a = %f, b = %f \n", a, b);
	printf("trap area %f\n ", trap_area);

	curve_subarea(a, b, trap_area, &local_area);
	printf("local area %f \n", local_area);
	if(p_id != 0){
		MPI_Send(&local_area, 1, MPI_DOUBLE, 0, 0, MPI_COMM_WORLD);
		printf("passou do send \n");
	}	
	else {
	
		for (int i = 1; i < n_cores; i++) {
			MPI_Recv(&local_area, 1, MPI_DOUBLE, i, 0,
				MPI_COMM_WORLD, MPI_STATUS_IGNORE);
			total_area += local_area;
		}	
	}
	if(p_id == 0)
		printf("The area under the curve is %lf \n", total_area);	

	MPI_Finalize();

	return 0;
}

double function(double x){
	return exp(x);
}

double compute_trap_area(double l, double r){
 
	return (function(l) + function(r))*(r - l)*0.5;
}


void curve_subarea(double a, double b, double area, double* sub_total){
	double m, l_area, r_area, error; 

	m = (a + b)*0.5;
	l_area = compute_trap_area(a, m);
	r_area = compute_trap_area(m, b);
	error = area - (l_area + r_area);

	if(fabs(error) < TOL){
                (*sub_total) += l_area + r_area;
	}
	else{ 
                curve_subarea(a, m, l_area, sub_total);
                curve_subarea(m, b, r_area, sub_total);
	}
}


