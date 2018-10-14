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

typedef struct _node {
	double a;
	double b;

	struct _node *next;
} stack_node;

typedef struct _stack_data {
    int size;
    struct _node *top;
} stack_data;

stack_data * stack_create() {
    stack_data *stack = (stack_data *) malloc(sizeof(stack_data));
    if(stack == NULL) {
        printf("Unable to create stack");
        exit(-1);
    }

    stack->top = NULL;
    stack->size = 0;

    return stack;
}

void stack_push(stack_data *stack, double a, double b) {
    stack_node *node = (stack_node *) malloc(sizeof(stack_node));
    if(node == NULL) {
        printf("Unable to create node");
        exit(-1);
    }

    node->a = a;
    node->b = b;
    node->next = stack->top;
    stack->top = node;
    stack->size++;
}

stack_node * stack_pop(stack_data *stack) {
    if(stack->size == 0) {
        return NULL;
    }

    stack_node *node = stack->top;
    stack->top = node->next;
    stack->size--;
    return node;
}

int stack_is_empty(stack_data *stack) {
    if(stack->size == 0)
        return 1;
    return 0;
}

void stack_destroy(stack_data *stack) {
    stack_node *node = stack_pop(stack);
    while(node != NULL) {
        free(node);
        node = stack_pop(stack);
    }

    free(stack);
}

int main(int argc, char *argv[]){
	int p_id;
	double l, r, w, trap_area;

	n_cores = atoi(argv[1]);
	l =  atoi(argv[2]);
	r =  atoi(argv[3]);
	w = (r - l)/(n_cores - 1);

	stack_data *stack = stack_create();

	for(int i = 0; i < n_cores - 1; i++) {
        double a = l + i * w;
        double b = l + (i + 1) * w;
        stack_push(stack, a, b);
    }

    MPI_Init(&argc, &argv);
    MPI_Comm_rank(MPI_COMM_WORLD, &p_id);
    MPI_Comm_size(MPI_COMM_WORLD, &n_cores);

    printf("Aquad - %d cores ; l = %.2f ; r = %.2f \n", n_cores, l, r);

	if(p_id == 0) {
	    for(int i = 0; i < n_cores - 1; i++) {
            MPI_Send(stack_pop(stack), 2, MPI_DOUBLE, i+1, 0, MPI_COMM_WORLD);
	    }
		printf("passou dos send \n");

        for (int i = 1; i < n_cores; i++) {
            double local_area;
        	MPI_Recv(&local_area, 1, MPI_DOUBLE, i, 1,
        		MPI_COMM_WORLD, MPI_STATUS_IGNORE);
            total_area += local_area;
        }
	}	
	else {
	    printf("Hello %d\n", p_id);
        MPI_Status status;
        double temp[2];

        MPI_Recv(temp, 2, MPI_DOUBLE, 0, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
        double a = temp[0];
        double b = temp[1];

        trap_area = compute_trap_area(a, b);
        printf("a = %f, b = %f \n", a, b);
        printf("trap area %f\n ", trap_area);

        double local_area;
        curve_subarea(a, b, trap_area, &local_area);
        printf("local area %f \n", local_area);
        MPI_Send(&local_area, 1, MPI_DOUBLE, 0, 1, MPI_COMM_WORLD);
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


