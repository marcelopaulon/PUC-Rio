/* File:     pth_tsp_dyn.c
 *
 * Purpose:  Use iterative depth-first search and pthreads to solve an
 *           instance of the travelling salesman problem.  This version
 *           partitions the search tree using breadth-first search.
 *           Then each thread searches its assigned subtree.  When
 *           a thread runs out of work, it goes into a condition
 *           wait until the program terminates or another thread
 *           gives it additional work.
 *
 * Compile:  mpicc -g -Wall -o main main.c -lpthread
 *
 * Usage:    mpiexec -n <proc count> main <node_count> <threads_per_node_count> <digraph file_path> <min split size>
 *
 * Input:    From a user-specified file, the number of cities
 *           followed by the costs of travelling between the
 *           cities organized as a matrix:  the cost of
 *           travelling from city i to city j is the ij entry.
 *           Costs are nonnegative ints.  Diagonal entries are 0.
 * Output:   The best tour found by the program and the cost
 *           of the tour.
 *
 * Notes:
 * 1.  Costs and cities are non-negative ints.
 * 2.  Program assumes the cost of travelling from a city to
 *     itself is zero, and the cost of travelling from one
 *     city to another city is positive.
 * 3.  Note that costs may not be symmetric:  the cost of travelling
 *     from A to B, may, in general, be different from the cost
 *     of travelling from B to A.
 * 4.  Salesperson's home town is 0.
 * 5.  The digraph is stored as an adjacency matrix, which is
 *     a one-dimensional array:  digraph[i][j] is computed as
 *     digraph[i*n + j]
 *
 * IPP:  Section 6.2.7 (pp. 310 and ff.)
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>
#include <mpi.h>

const int INFINITY = 1000000;
const int NO_CITY = -1;
const int FALSE = 0;
const int TRUE = 1;
const int MAX_STRING = 1000;
const int TOUR_TAG = 1;

typedef int city_t;
typedef int cost_t;
typedef struct {
    city_t* cities; /* Cities in partial tour           */
    int count;      /* Number of cities in partial tour */
    cost_t cost;    /* Cost of partial tour             */
} tour_struct;
typedef tour_struct* tour_t;
#define City_count(tour) (tour->count)
#define Tour_cost(tour) (tour->cost)
#define Last_city(tour) (tour->cities[(tour->count)-1])
#define Tour_city(tour,i) (tour->cities[(i)])

typedef struct {
    tour_t* list;
    int list_sz;
    int list_alloc;
}  stack_struct;
typedef stack_struct* my_stack_t;

/* head refers to the first element in the queue
 * tail refers to the first available slot
 */
typedef struct {
    tour_t* list;
    int list_alloc;
    int head;
    int tail;
    int full;
}  queue_struct;
typedef queue_struct* my_queue_t;
#define Queue_elt(queue,i) \
   (queue->list[(queue->head + (i)) % queue->list_alloc])

typedef struct {
    int curr_tc;  // Number of threads that have entered the barrier
    int max_tc;   // Number of threads that need to enter the barrier
    pthread_mutex_t mutex;
    pthread_cond_t ok_to_go;
}  barrier_struct;
typedef barrier_struct* my_barrier_t;

typedef struct {
    my_stack_t stack;
    int count;  // Number of terminated threads
    pthread_cond_t cond;
    pthread_mutex_t mutex;
} term_struct;
typedef term_struct* term_t;

/* Global Vars: */
int n;  /* Number of cities in the problem */
int thread_count;
cost_t* digraph;
#define Cost(city1, city2) (digraph[city1*n + city2])
city_t home_town = 0;
pthread_mutex_t best_tour_mutex;
my_queue_t queue;
int queue_size;
int init_tour_count;
my_barrier_t bar_str;
int min_split_sz;
term_t term;

MPI_Comm comm;
int cluster_count;
int cluster_rank;
tour_t loc_best_tour;
cost_t global_best_tour_cost;
MPI_Datatype tour_arr_mpi_t;  // For storing the list of cities
char* mpi_buffer;

/* Statistics */
int stack_splits = 0;

void Usage(char* prog_name);
void Read_digraph(FILE* digraph_file);
void Print_digraph(void);

void* Par_tree_search(void* rank);
void Partition_tree(long my_rank, my_stack_t stack);
void Set_init_tours(long my_rank, int* my_first_tour_p,
                    int* my_last_tour_p);
void Build_initial_queue(void);
void Print_tour(long my_rank, tour_t tour, char* title);
int  Best_tour(tour_t tour);
void Update_best_tour(tour_t tour);
void Copy_tour(tour_t tour1, tour_t tour2);
void Add_city(tour_t tour, city_t);
void Remove_last_city(tour_t tour);
int  Feasible(tour_t tour, city_t city);
int  Visited(tour_t tour, city_t city);
void Init_tour(tour_t tour, cost_t cost);
tour_t Alloc_tour(my_stack_t avail);
void Free_tour(tour_t tour, my_stack_t avail);

int  Terminated(my_stack_t* stack_p, long my_rank);
void Init_term(void);
void Free_term(void);
my_stack_t Split_stack(my_stack_t stack, long my_rank);

my_stack_t Init_stack(void);
void Push(my_stack_t stack, tour_t tour);  // Push pointer
void Push_copy(my_stack_t stack, tour_t tour, my_stack_t avail);
tour_t Pop(my_stack_t stack);
int  Empty_stack(my_stack_t stack);
void Free_stack(my_stack_t stack);
void Print_stack(my_stack_t stack, long my_rank, char title[]);

/* Circular queue */
my_queue_t Init_queue(int size);
tour_t Dequeue(my_queue_t queue);
void Enqueue(my_queue_t queue, tour_t tour);
int Empty_queue(my_queue_t queue);
void Free_queue(my_queue_t queue);
void Print_queue(my_queue_t queue, long my_rank, char title[]);
int Get_upper_bd_queue_sz(void);
long long Fact(int k);

/* Barrier */
my_barrier_t My_barrier_init(int thr_count);
void My_barrier_destroy(my_barrier_t bar);
void My_barrier(my_barrier_t bar);

void Look_for_best_tours(void);
void Bcast_tour_cost(cost_t tour_cost);
void Cleanup_msg_queue(void);

/*------------------------------------------------------------------*/
int main(int argc, char* argv[]) {
    FILE* digraph_file;
    double start, finish;
    long thread;
    pthread_t* thread_handles;
    char* ret_buf;
    int one_msg_sz;

    MPI_Init(&argc, &argv);
    comm = MPI_COMM_WORLD;
    MPI_Comm_size(comm, &cluster_count);
    MPI_Comm_rank(comm, &cluster_rank);

    if (argc != 5) {
        Usage(argv[0]);
        return -1;
    }

    char *node_count_arg = argv[1];
    char *threads_per_node_count_arg = argv[2];
    char *digraph_file_path_arg = argv[3];
    char *min_split_size_arg = argv[4];

    if(cluster_count != (int) strtol(node_count_arg, NULL, 10)) {
        printf("Node count argument does not match MPI comm size");
        return -1;
    }

    thread_count = (int) strtol(threads_per_node_count_arg, NULL, 10);
    if (thread_count <= 0) {
        fprintf(stderr, "Thread count must be positive\n");
        Usage(argv[0]);
        return -1;
    }

    digraph_file = fopen(digraph_file_path_arg, "r");

    if (digraph_file == NULL) {
        fprintf(stderr, "Can't open %s\n", digraph_file_path_arg);
        Usage(argv[0]);
        return -1;
    }

    Read_digraph(digraph_file);
    fclose(digraph_file);

    min_split_sz = (int) strtol(min_split_size_arg, NULL, 10);
    if (min_split_sz <= 0) {
        fprintf(stderr, "Min split size should be positive\n");
        Usage(argv[0]);
        return -1;
    }

    loc_best_tour = Alloc_tour(NULL);
    Init_tour(loc_best_tour, INFINITY);
    global_best_tour_cost = INFINITY;

    MPI_Type_contiguous(n+1, MPI_INT, &tour_arr_mpi_t);
    MPI_Type_commit(&tour_arr_mpi_t);

    MPI_Pack_size(1, MPI_INT, comm, &one_msg_sz);
    mpi_buffer =
            malloc(100*cluster_count*(one_msg_sz + MPI_BSEND_OVERHEAD)*sizeof(char));
    MPI_Buffer_attach(mpi_buffer,
                      100*cluster_count*(one_msg_sz + MPI_BSEND_OVERHEAD));

#  ifdef DEBUG
    Print_digraph();
#  endif

    thread_handles = malloc(thread_count*sizeof(pthread_t));
    bar_str = My_barrier_init(thread_count);
    pthread_mutex_init(&best_tour_mutex, NULL);
    Init_term();

#  ifdef DEBUG
    Print_tour(cluster_rank, loc_best_tour, "Best tour");
   printf("City count = %d\n",  City_count(loc_best_tour));
   printf("Cost = %d\n\n", Tour_cost(loc_best_tour));
#  endif

    start = MPI_Wtime();
    for (thread = 0; thread < thread_count; thread++)
        pthread_create(&thread_handles[thread], NULL,
                       Par_tree_search, (void*) thread);

    for (thread = 0; thread < thread_count; thread++)
        pthread_join(thread_handles[thread], NULL);

    finish = MPI_Wtime();
    Cleanup_msg_queue();
    MPI_Barrier(comm);
    MPI_Buffer_detach(&ret_buf, &one_msg_sz);

    if (cluster_rank == 0) {
        if(loc_best_tour == NULL) {
            printf("Tour not found");
        }
        else {
            Print_tour(cluster_rank, loc_best_tour, "Best tour");
            printf("Cost = %d\n", loc_best_tour->cost);
            printf("Elapsed time = %e seconds\n", finish - start);
        }
    }

#  ifdef STATS
    printf("Stack splits = %d\n", stack_splits);
#  endif

    //MPI_Type_free(&tour_arr_mpi_t);
    free(loc_best_tour->cities);
    free(loc_best_tour);
    free(thread_handles);
    free(digraph);
    My_barrier_destroy(bar_str);
    pthread_mutex_destroy(&best_tour_mutex);
    Free_term();
    MPI_Finalize();
    return 0;
}  /* main */

/*------------------------------------------------------------------
 * Function:  Init_tour
 * Purpose:   Initialize the data members of allocated tour
 * In args:
 *    cost:   initial cost of tour
 * Global in:
 *    n:      number of cities in TSP
 * Out arg:
 *    tour
 */
void Init_tour(tour_t tour, cost_t cost) {
    int i;

    tour->cities[0] = 0;
    for (i = 1; i <= n; i++) {
        tour->cities[i] = NO_CITY;
    }
    tour->cost = cost;
    tour->count = 1;
}  /* Init_tour */


/*------------------------------------------------------------------
 * Function:  Usage
 * Purpose:   Inform user how to start program and exit
 * In arg:    prog_name
 */
void Usage(char* prog_name) {
    fprintf(stderr, "usage: %s <node_count> <threads_per_node_count> <digraph file_path> <min split size>\n",
            prog_name);
    exit(0);
}  /* Usage */

/*------------------------------------------------------------------
 * Function:  Read_digraph
 * Purpose:   Read in the number of cities and the digraph of costs
 * In arg:    digraph_file
 * Globals out:
 *    n:        the number of cities
 *    digraph:  the matrix file
 */
void Read_digraph(FILE* digraph_file) {
    int i, j;

    fscanf(digraph_file, "%d", &n);
    if (n <= 0) {
        fprintf(stderr, "Number of vertices in digraph must be positive\n");
        exit(-1);
    }
    digraph = malloc(n*n*sizeof(cost_t));

    for (i = 0; i < n; i++)
        for (j = 0; j < n; j++) {
            fscanf(digraph_file, "%d", &digraph[i*n + j]);
            if (i == j && digraph[i*n + j] != 0) {
                fprintf(stderr, "Diagonal entries must be zero\n");
                exit(-1);
            } else if (i != j && digraph[i*n + j] <= 0) {
                fprintf(stderr, "Off-diagonal entries must be positive\n");
                fprintf(stderr, "diagraph[%d,%d] = %d\n", i, j, digraph[i*n+j]);
                exit(-1);
            }
        }
}  /* Read_digraph */


/*------------------------------------------------------------------
 * Function:  Print_digraph
 * Purpose:   Print the number of cities and the digraphrix of costs
 * Globals in:
 *    n:        number of cities
 *    digraph:  digraph of costs
 */
void Print_digraph(void) {
    int i, j;

    printf("Order = %d\n", n);
    printf("Matrix = \n");
    for (i = 0; i < n; i++) {
        for (j = 0; j < n; j++)
            printf("%2d ", digraph[i*n+j]);
        printf("\n");
    }
    printf("\n");
}  /* Print_digraph */


/*------------------------------------------------------------------
 * Function:    Par_tree_search
 * Purpose:     Use multiple threads to search a tree
 * In arg:
 *    rank:     thread rank
 * Globals in:
 *    n:        total number of cities in the problem
 * Notes:
 * 1. The Update_best_tour function will modify the global var
 *    best_tour
 */
void* Par_tree_search(void* rank) {
    long my_rank = (long) rank;
    city_t nbr;
    my_stack_t stack;  // Stack for searching
    my_stack_t avail;  // Stack for unused tours
    tour_t curr_tour;

    avail = Init_stack();
    stack = Init_stack();
    Partition_tree(my_rank, stack);

    while (!Terminated(&stack, my_rank)) {
        curr_tour = Pop(stack);
#     ifdef PTSDEBUG
        Print_tour(my_rank, curr_tour, "Popped");
#     endif
        if (City_count(curr_tour) == n) {
            if (Best_tour(curr_tour)) {
#           ifdef PTSDEBUG
                Print_tour(my_rank, curr_tour, "Best tour");
#           endif
                Update_best_tour(curr_tour);
            }
        } else {
            for (nbr = n-1; nbr >= 1; nbr--)
                if (Feasible(curr_tour, nbr)) {
                    Add_city(curr_tour, nbr);
                    Push_copy(stack, curr_tour, avail);
                    Remove_last_city(curr_tour);
                }
        }
        Free_tour(curr_tour, avail);
    }
    Free_stack(avail);
    if (my_rank == 0) Free_queue(queue);

    return NULL;
}  /* Par_tree_search */


/*------------------------------------------------------------------
 * Function:  Partition_tree
 * Purpose:   Assign each thread its initial collection of subtrees
 * In arg:
 *    my_rank
 * Out args:
 *    stack:  stack will store each thread's initial tours
 *
 * Global scratch:
 *    queue_size
 *    queue
 *
 */
void Partition_tree(long my_rank, my_stack_t stack) {
    int my_first_tour, my_last_tour, i;
    int thread_global_rank = (int) (my_rank + (thread_count * cluster_rank));

    if (my_rank == 0) queue_size = Get_upper_bd_queue_sz();
    My_barrier(bar_str);
#  ifdef DEBUG
    printf("Th %ld > queue_size = %d\n", my_rank, queue_size);
#  endif
    if (queue_size == 0) pthread_exit(NULL);

    if (my_rank == 0) Build_initial_queue();
    My_barrier(bar_str);
    Set_init_tours(thread_global_rank, &my_first_tour, &my_last_tour);
#  ifdef DEBUG
    printf("Th %ld > init_tour_count = %d, first = %d, last = %d\n",
         my_rank, init_tour_count, my_first_tour, my_last_tour);
#  endif
    for (i = my_last_tour; i >= my_first_tour; i--) {
#     ifdef DEBUG
        Print_tour(my_rank, Queue_elt(queue,i), "About to push");
#     endif
        Push(stack, Queue_elt(queue,i));
    }
#  ifdef PTSDEBUG
    Print_stack(stack, my_rank, "After set up");
#  endif

}  /* Partition_tree */

/*------------------------------------------------------------------
 * Function:   Set_init_tours
 * Purpose:    Determine which tours in the initial queue should be
 *             assigned to this thread
 * In arg:
 *    my_rank
 * Out args:
 *    my_first_tour_p
 *    my_last_tour_p
 * Globals in:
 *    thread_count
 *    init_tour_count:  the number of tours in the initial queue
 *
 * Note:  A block partition is used.
 */
void Set_init_tours(long thread_global_rank, int* my_first_tour_p,
                    int* my_last_tour_p) {
    int quotient, remainder, my_count;

    quotient = init_tour_count/(thread_count * cluster_count);
    remainder = init_tour_count % (thread_count * cluster_count);
    if (thread_global_rank < remainder) {
        my_count = quotient+1;
        *my_first_tour_p = thread_global_rank*my_count;
    } else {
        my_count = quotient;
        *my_first_tour_p = thread_global_rank*my_count + remainder;
    }
    *my_last_tour_p = *my_first_tour_p + my_count - 1;
}   /* Set_init_tours */


/*------------------------------------------------------------------
 * Function:  Build_initial_queue
 * Purpose:   Build queue of tours to be divided among processes/threads
 * Global Scratch:
 *    queue
 * Global Out
 *    init_queue_size
 *
 * Note:  Only called by one process/thread
 */
void Build_initial_queue(void) {
    int curr_sz = 0;
    city_t nbr;
    tour_t tour = Alloc_tour(NULL);

    Init_tour(tour, 0);
    queue = Init_queue(2*queue_size);

    /* Breadth-first search */
    Enqueue(queue, tour);  // Enqueues a copy
// printf("Freeing %p\n", tour);
    Free_tour(tour, NULL);
    curr_sz++;
    while (curr_sz < thread_count * cluster_count) {
        tour = Dequeue(queue);
//    printf("Dequeued %p\n", tour);
        curr_sz--;
        for (nbr = 1; nbr < n; nbr++)
            if (!Visited(tour, nbr)) {
                Add_city(tour, nbr);
                Enqueue(queue, tour);
                curr_sz++;
                Remove_last_city(tour);
            }
//    printf("Freeing %p\n", tour);
        Free_tour(tour, NULL);
    }  /* while */
    init_tour_count = curr_sz;

#  ifdef DEBUG
    Print_queue(queue, 0, "Initial queue");
#  endif
}  /* Build_initial_queue */

/*------------------------------------------------------------------
 * Function:    Best_tour
 * Purpose:     Determine whether addition of the hometown to the
 *              n-city input tour will lead to a best tour.
 * In arg:
 *    tour:     tour visiting all n cities
 * Ret val:
 *    TRUE if best tour, FALSE otherwise
 */
int Best_tour(tour_t tour) {
    cost_t cost_so_far = Tour_cost(tour);
    city_t last_city = Last_city(tour);

    Look_for_best_tours();

    if (cost_so_far + Cost(last_city, home_town) < Tour_cost(loc_best_tour))
        return TRUE;
    else
        return FALSE;
}  /* Best_tour */


/*------------------------------------------------------------------
 * Function:   Look_for_best_tours
 * Purpose:    Examine the message queue for tour costs received from
 *             other processes.  If a tour cost that's less than the
 *             current best cost on this process, best_tour_cost will
 *             be updated.
 * Global In/out:
 *    best_tour_cost
 * Note:
 *    Tour costs are probed for and received as long as there are
 *    messages with TOUR_TAG.
 */
void Look_for_best_tours(void) {
    int done = FALSE, msg_avail, tour_cost;
    MPI_Status status;

    while(!done) {
        MPI_Iprobe(MPI_ANY_SOURCE, TOUR_TAG, comm, &msg_avail,
                   &status);
        if (msg_avail) {
            MPI_Recv(&tour_cost, 1, MPI_INT, status.MPI_SOURCE, TOUR_TAG,
                     comm, MPI_STATUS_IGNORE);
#        ifdef STATS
            best_costs_received++;
#        endif
#        ifdef VERBOSE_STATS
            printf("Proc %d > received cost %d\n", my_rank, tour_cost);
#        endif
            if (tour_cost < global_best_tour_cost) global_best_tour_cost = tour_cost;
        } else {
            done = TRUE;
        }
    }  /* while */
}  /* Look_for_best_tours */

/*------------------------------------------------------------------
 * Function:    Update_best_tour
 * Purpose:     Replace the existing best tour with the input tour +
 *              hometown
 * In arg:
 *    tour:     tour that's visited all n-cities
 * Global out:
 *    best_tour:  the current best tour
 * Note:
 * 1. The input tour hasn't had the home_town added as the last
 *    city before the call to Update_best_tour.  So we call
 *    Add_city(best_tour, hometown) before returning.
 * 2. The call to Best_tour is necessary.  Without, we can get
 *    the following race:
 *
 *       best_tour_cost = 1000
 *       Time       Th 0                 Th 1
 *       ----       ----                 ----
 *        0         tour->cost = 10
 *        1         Best_tour ret true   tour->cost = 20
 *        2                              Best_tour ret true
 *        3         Lock mutex
 *        4         best_tour_cost = 10  Wait on mutex
 *        5         Unlock mutex
 *        6                              Lock mutex
 *        7                              best_tour_cost = 20
 *        8                              Unlock mutex
 *
 */
void Update_best_tour(tour_t tour) {
    pthread_mutex_lock(&best_tour_mutex);
    if (Best_tour(tour)) {
        Copy_tour(tour, loc_best_tour);
        Add_city(loc_best_tour, home_town);

        global_best_tour_cost = Tour_cost(loc_best_tour);

        Bcast_tour_cost(global_best_tour_cost);
    }
    pthread_mutex_unlock(&best_tour_mutex);
}  /* Update_best_tour */

/*------------------------------------------------------------------
 * Function:   Bcast_tour_cost
 * Purpose:    Asynchronous broadcast of tour cost
 *
 * Note:
 *    MPI_Bcast is a point of synchronization for the processes.
 *    So it can't be used.
 */
void Bcast_tour_cost(int tour_cost) {
    int dest;

    for (dest = 0; dest < cluster_count; dest++)
        if (dest != cluster_rank)
            MPI_Bsend(&tour_cost, 1, MPI_INT, dest, TOUR_TAG, comm);
#  ifdef STATS
    best_costs_bcast++;
#  endif
}  /* Bcast_tour_cost */

/*------------------------------------------------------------------
 * Function:   Copy_tour
 * Purpose:    Copy tour1 into tour2
 * In arg:
 *    tour1
 * Out arg:
 *    tour2
 */
void Copy_tour(tour_t tour1, tour_t tour2) {
// int i;

    memcpy(tour2->cities, tour1->cities, (n+1)*sizeof(city_t));
// for (i = 0; i <= n; i++)
//   tour2->cities[i] =  tour1->cities[i];
    tour2->count = tour1->count;
    tour2->cost = tour1->cost;
}  /* Copy_tour */

/*------------------------------------------------------------------
 * Function:  Add_city
 * Purpose:   Add city to the end of tour
 * In arg:
 *    city
 * In/out arg:
 *    tour
 * Note: This should only be called if tour->count >= 1.
 */
void Add_city(tour_t tour, city_t new_city) {
    city_t old_last_city = Last_city(tour);
    tour->cities[tour->count] = new_city;
    (tour->count)++;
    tour->cost += Cost(old_last_city,new_city);
}  /* Add_city */

/*------------------------------------------------------------------
 * Function:  Remove_last_city
 * Purpose:   Remove last city from end of tour
 * In/out arg:
 *    tour
 * Note:
 *    Function assumes there are at least two cities on the tour --
 *    i.e., the hometown in tour->cities[0] won't be removed.
 */
void Remove_last_city(tour_t tour) {
    city_t old_last_city = Last_city(tour);
    city_t new_last_city;

    tour->cities[tour->count-1] = NO_CITY;
    (tour->count)--;
    new_last_city = Last_city(tour);
    tour->cost -= Cost(new_last_city,old_last_city);
}  /* Remove_last_city */

/*------------------------------------------------------------------
 * Function:  Feasible
 * Purpose:   Check whether nbr could possibly lead to a better
 *            solution if it is added to the current tour.  The
 *            function checks whether nbr has already been visited
 *            in the current tour, and, if not, whether adding the
 *            edge from the current city to nbr will result in
 *            a cost less than the current best cost.
 * In args:   All
 * Global in:
 *    best_tour
 * Return:    TRUE if the nbr can be added to the current tour.
 *            FALSE otherwise
 */
int Feasible(tour_t tour, city_t city) {
    city_t last_city = Last_city(tour);

    if (!Visited(tour, city) &&
        Tour_cost(tour) + Cost(last_city,city) < Tour_cost(loc_best_tour))
        return TRUE;
    else
        return FALSE;
}  /* Feasible */


/*------------------------------------------------------------------
 * Function:   Visited
 * Purpose:    Use linear search to determine whether city has already
 *             been visited on the current tour.
 * In args:    All
 * Return val: TRUE if city has already been visited.
 *             FALSE otherwise
 */
int Visited(tour_t tour, city_t city) {
    int i;

    for (i = 0; i < City_count(tour); i++)
        if ( Tour_city(tour,i) == city ) return TRUE;
    return FALSE;
}  /* Visited */


/*------------------------------------------------------------------
 * Function:  Print_tour
 * Purpose:   Print a tour
 * In args:   All
 * Notes:
 * 1.  Copying the tour to a string makes it less likely that the
 *     output will be broken up by another process/thread
 * 2.  Passing a negative value for my_rank will cause the rank
 *     to be omitted from the output
 */
void Print_tour(long my_rank, tour_t tour, char* title) {
    int i;
    char string[MAX_STRING];

    if (my_rank >= 0)
        sprintf(string, "Th %ld > %s %p: ", my_rank, title, tour);
    else
        sprintf(string, "%s: ", title);
    for (i = 0; i < City_count(tour); i++)
        sprintf(string + strlen(string), "%d ", Tour_city(tour,i));
    printf("%s\n\n", string);
}  /* Print_tour */

/*------------------------------------------------------------------
 * Function:  Alloc_tour
 * Purpose:   Allocate memory for a tour and its members
 * In/out arg:
 *    avail:  stack storing unused tours
 * Global in: n, number of cities
 * Ret val:   Pointer to a tour_struct with storage allocated for its
 *            members
 */
tour_t Alloc_tour(my_stack_t avail) {
    tour_t tmp;

    if (avail == NULL || Empty_stack(avail)) {
        tmp = malloc(sizeof(tour_struct));
        tmp->cities = malloc((n+1)*sizeof(city_t));
        return tmp;
    } else {
        return Pop(avail);
    }
}  /* Alloc_tour */

/*------------------------------------------------------------------
 * Function:  Free_tour
 * Purpose:   Free a tour
 * In/out arg:
 *    avail
 * Out arg:
 *    tour
 */
void Free_tour(tour_t tour, my_stack_t avail) {
    if (avail == NULL) {
        free(tour->cities);
        free(tour);
    } else {
        Push(avail, tour);
    }
}  /* Free_tour */

/*------------------------------------------------------------------
 * Function: Init_stack
 * Purpose:  Allocate storage for a new stack and initialize members
 * Out arg:  stack_p
 */
my_stack_t Init_stack(void) {
    int i;

    my_stack_t stack = malloc(sizeof(stack_struct));
    stack->list = malloc(n*n*sizeof(tour_t));
    for (i = 0; i < n*n; i++)
        stack->list[i] = NULL;
    stack->list_sz = 0;
    stack->list_alloc = n*n;

    return stack;
}  /* Init_stack */


/*------------------------------------------------------------------
 * Function:    Push
 * Purpose:     Push a tour pointer onto the stack
 * In arg:      tour
 * In/out arg:  stack
 */
void Push(my_stack_t stack, tour_t tour) {
    if (stack->list_sz == stack->list_alloc) {
//    fprintf(stderr, "Stack overflow in Push!\n");
        free(tour->cities);
        free(tour);
    } else {
#     ifdef DEBUG
        printf("In Push, list_sz = %d, pushing %p and %p\n",
            stack->list_sz, tour, tour->cities);
      Print_tour(-1, tour, "About to be pushed onto stack");
      printf("\n");
#     endif
        stack->list[stack->list_sz] = tour;
        (stack->list_sz)++;
    }
}  /* Push */

/*------------------------------------------------------------------
 * Function:    Push_copy
 * Purpose:     Push a copy of tour onto the top of the stack
 * In arg:      tour
 * In/out arg:
 *    stack
 *    avail
 * Error:       If the stack is full, print an error and exit
 */
void Push_copy(my_stack_t stack, tour_t tour, my_stack_t avail) {
    tour_t tmp;

    if (stack->list_sz == stack->list_alloc) {
        fprintf(stderr, "Stack overflow!\n");
        exit(-1);
    }
    tmp = Alloc_tour(avail);
    Copy_tour(tour, tmp);
    stack->list[stack->list_sz] = tmp;
    (stack->list_sz)++;
}  /* Push_copy */


/*------------------------------------------------------------------
 * Function:  Pop
 * Purpose:   Reduce the size of the stack by returning the top
 * In arg:    stack
 * Ret val:   The tour on the top of the stack
 * Error:     If the stack is empty, print a message and exit
 */
tour_t Pop(my_stack_t stack) {
    tour_t tmp;

    if (stack->list_sz == 0) {
        fprintf(stderr, "Trying to pop empty stack!\n");
        exit(-1);
    }
    tmp = stack->list[stack->list_sz-1];
    stack->list[stack->list_sz-1] = NULL;
    (stack->list_sz)--;
    return tmp;
}  /* Pop */


/*------------------------------------------------------------------
 * Function:  Empty_stack
 * Purpose:   Determine whether the stack is empty
 * In arg:    stack
 * Ret val:   TRUE if empty, FALSE otherwise
 *
 * Note:      As long as min_split_sz is >= 2, splitting the
 *            stack can't empty the stack.  So the member
 *            list_sz will only be set to 0 by the thread
 *            that owns the stack.
 */
int  Empty_stack(my_stack_t stack) {
    if (stack->list_sz == 0)
        return TRUE;
    else
        return FALSE;
}  /* Empty_stack */


/*------------------------------------------------------------------
 * Function:  Free_stack
 * Purpose:   Free a stack and its members
 * Out arg:   stack
 */
void Free_stack(my_stack_t stack) {
    int i;

    for (i = 0; i < stack->list_sz; i++) {
        free(stack->list[i]->cities);
        free(stack->list[i]);
    }
    free(stack->list);
    free(stack);

}  /* Free_stack */

/*------------------------------------------------------------------
 * Function:  Print_stack
 * Purpose:   Print contents of stack for debugging
 * In args:   all
 */
void Print_stack(my_stack_t stack, long my_rank, char title[]) {
    char string[MAX_STRING];
    int i, j;

    printf("Th %ld > %s\n", my_rank, title);
    for (i = 0; i < stack->list_sz; i++) {
        sprintf(string, "Th %ld > ", my_rank);
        for (j = 0; j < stack->list[i]->count; j++)
            sprintf(string + strlen(string), "%d ", stack->list[i]->cities[j]);
        printf("%s\n", string);
    }

}  /* Print_stack */

/*------------------------------------------------------------------
 * Function:  Init_queue
 * Purpose:   Allocate storage for and initialize data members in
 *            new queue
 * In arg:    size, the size of the new queue
 * Ret val:   new queue
 */
my_queue_t Init_queue(int size) {
    my_queue_t new_queue = malloc(sizeof(queue_struct));
    new_queue->list = malloc(size*sizeof(tour_t));
    new_queue->list_alloc = size;
    new_queue->head = new_queue->tail = new_queue->full = 0;

    return new_queue;
}  /* Init_queue */


/*------------------------------------------------------------------
 * Function:   Dequeue
 * Purpose:    Remove the tour at the head of the queue and return
 *             it
 * In/out arg: queue
 * Ret val:    tour at head of queue
 */
tour_t Dequeue(my_queue_t queue) {
    tour_t tmp;

    if (Empty_queue(queue)) {
        fprintf(stderr, "Attempting to dequeue from empty queue\n");
        exit(-1);
    }
    tmp = queue->list[queue->head];
    queue->head = (queue->head + 1) % queue->list_alloc;
    return tmp;
}  /* Dequeue */

/*------------------------------------------------------------------
 * Function:   Enqueue
 * Purpose:    Add a new tour to the tail of the queue
 * In arg:     tour
 * In/out arg: queue
 */
void Enqueue(my_queue_t queue, tour_t tour) {
    tour_t tmp;

    if (queue->full == TRUE) {
        fprintf(stderr, "Attempting to enqueue a full queue\n");
        fprintf(stderr, "list_alloc = %d, head = %d, tail = %d\n",
                queue->list_alloc, queue->head, queue->tail);
        exit(-1);
    }
    tmp = Alloc_tour(NULL);
    Copy_tour(tour, tmp);
// printf("Enqueuing %p\n", tmp);
    queue->list[queue->tail] = tmp;
    queue->tail = (queue->tail + 1) % queue->list_alloc;
    if (queue->tail == queue->head)
        queue->full = TRUE;

}  /* Enqueue */

/*------------------------------------------------------------------
 * Function:  Empty_queue
 * Purpose:   Determine whether the queue is empty
 * Ret val:   TRUE if queue is empty, FALSE otherwise
 */
int Empty_queue(my_queue_t queue) {
    if (queue->full == TRUE)
        return FALSE;
    else if (queue->head != queue->tail)
        return FALSE;
    else
        return TRUE;
}  /* Empty_queue */

/*------------------------------------------------------------------
 * Function:    Free_queue
 * Purpose:     Free storage used for queue
 * Out arg:     queue
 */
void Free_queue(my_queue_t queue) {
// int i;
//
// for (i = queue->head; i != queue->tail; i = (i+1) % queue->list_alloc) {
//    free(queue->list[i]->cities);
//    free(queue->list[i]);
// }
    free(queue->list);
    free(queue);
}  /* Free_queue */

/*------------------------------------------------------------------
 * Function:  Print_queue
 * Purpose:   Print contents of queue for debugging
 * In args:   all
 */
void Print_queue(my_queue_t queue, long my_rank, char title[]) {
    char string[MAX_STRING];
    int i, j;

    printf("Th %ld > %s\n", my_rank, title);
    for (i = queue->head; i != queue->tail; i = (i+1) % queue->list_alloc) {
        sprintf(string, "Th %ld > %p = ", my_rank, queue->list[i]);
        for (j = 0; j < queue->list[i]->count; j++)
            sprintf(string + strlen(string), "%d ", queue->list[i]->cities[j]);
        printf("%s\n", string);
    }

}  /* Print_queue */

/*------------------------------------------------------------------
 * Function:    Get_upper_bd_queue_sz
 * Purpose:     Determine the number of tours needed so that
 *              each thread/process gets at least one and a level
 *              of the tree is fully expanded.  Used as upper
 *              bound when building initial queue and used as
 *              test to see if there are too many threads for
 *              the problem size
 * Globals In:
 *    thread_count:  number of threads
 *    n:             number of cities
 *
 */
int Get_upper_bd_queue_sz(void) {
    int fact = n-1;
    int size = n-1;

    while (size < thread_count * cluster_count) {
        fact++;
        size *= fact;
    }

    if (size > Fact(n-1)) {
        fprintf(stderr, "You really shouldn't use so many threads for");
        fprintf(stderr, "such a small problem\n");
        size = 0;
    }
    return size;
}  /* Get_upper_bd_queue_sz */

/*------------------------------------------------------------------
 * Function:    Fact
 * Purpose:     Compute k!
 * In arg:      k
 * Ret val:     k!
 */
long long Fact(int k) {
    long long tmp = 1;
    int i;

    for (i = 2; i <= k; i++)
        tmp *= i;
    return tmp;
}  /* Fact */


/*------------------------------------------------------------------
 * Function:  My_barrier_init
 * Purpose:   Initialize data members of barrier struct
 * In arg:
 *    thr_count:  number of threads that will use this barrier
 * Ret val:
 *    Pointer to initialized barrier struct
 */
my_barrier_t My_barrier_init(int thr_count) {
    my_barrier_t bar = malloc(sizeof(barrier_struct));
    bar->curr_tc = 0;
    bar->max_tc = thr_count;
    pthread_mutex_init(&bar->mutex, NULL);
    pthread_cond_init(&bar->ok_to_go, NULL);

    return bar;
}  /* My_barrier_init */


/*------------------------------------------------------------------
 * Function:  My_barrier_destroy
 * Purpose:   Free barrier struct and its members
 * Out arg:   bar
 */
void My_barrier_destroy(my_barrier_t bar) {
    pthread_mutex_destroy(&bar->mutex);
    pthread_cond_destroy(&bar->ok_to_go);
    free(bar);
}  /* My_barrier_destroy */


/*------------------------------------------------------------------
 * Function:  My_barrier
 * Purpose:   Implement a barrier using a condition variable
 * In/out arg:  bar
 */
void My_barrier(my_barrier_t bar) {
    pthread_mutex_lock(&bar->mutex);
    bar->curr_tc++;
    if (bar->curr_tc == bar->max_tc) {
        bar->curr_tc = 0;
        pthread_cond_broadcast(&bar->ok_to_go);
    } else {
        // Wait unlocks mutex and puts thread to sleep.
        //    Put wait in while loop in case some other
        // event awakens thread.
        while (pthread_cond_wait(&bar->ok_to_go,
                                 &bar->mutex) != 0);
        // Mutex is relocked at this point.
    }
    pthread_mutex_unlock(&bar->mutex);

}  /* My_barrier */


/*------------------------------------------------------------------
 * Function:  Terminated
 * Purpose:   Determine whether there is any remaining work.  If there
 *            is, and there is no local work wait on work from another
 *            thread.
 * In/out arg:  stack
 * In/out global:  term
 */
int  Terminated(my_stack_t* stack_p, long my_rank) {
    my_stack_t stack = *stack_p;
    int got_lock;
#  ifdef TERM_DEBUG
    // printf("Th %ld > Enter Terminated, stack size = %d\n", my_rank,
//       stack->list_sz);
#  endif

    if (stack->list_sz >= min_split_sz && term->count > 0 &&
        term->stack == NULL) {
        /* Lots of tours in stack */
        got_lock = pthread_mutex_trylock(&term->mutex);
        if (got_lock == 0) {
            if (term->count > 0 && term->stack == NULL) {
#           ifdef TERM
                printf("Th %ld > about to split stack\n", my_rank);
#           endif
                term->stack = Split_stack(stack, my_rank);
#           ifdef STATS
                stack_splits++;
#           endif
                pthread_cond_signal(&term->cond);
            }
            pthread_mutex_unlock(&term->mutex);
        }
        return FALSE;
    } else if (!Empty_stack(stack)) {  /* At least one tour in stack */
        return FALSE;
    } else {  /* my stack is empty */
#     ifdef TERM_DEBUG
        printf("Th %ld > Waiting on mutex\n", my_rank);
#     endif
        pthread_mutex_lock(&term->mutex);
#     ifdef TERM_DEBUG
        printf("Th %ld > Got mutex, term->count = %d\n",
            my_rank, term->count);
#     endif
        if (term->count == thread_count-1) { /* Last thread running */
            term->count++;
            pthread_cond_broadcast(&term->cond);
            pthread_mutex_unlock(&term->mutex);
            Free_stack(stack);
            return TRUE;
        } else { /* Threads still running, wait for work */
            Free_stack(stack);
            term->count++;
#        ifdef TERM
            printf("Th %ld > Entering condition wait\n", my_rank);
         fflush(stdout);
#        endif
            while (pthread_cond_wait(&term->cond, &term->mutex) != 0);
            if (term->count < thread_count) {
                if (term->stack != NULL) {
#              ifdef TERM
                    printf("Th %ld > Getting new stack\n", my_rank);
#              endif
                    *stack_p = stack = term->stack;
#              ifdef TERM_DEBUG
                    Print_stack(stack, my_rank, "New stack");
#              endif
                    term->stack = NULL;
                    term->count--;
                    pthread_mutex_unlock(&term->mutex);
                    return FALSE;
                } else { /* Uh oh . . .  */
                    term->count--;
                    pthread_mutex_unlock(&term->mutex);
                    fprintf(stderr, "Th %ld > Awakened with no work avail!\n",
                            my_rank);
                    pthread_exit(NULL);
                }
            } else { /* All threads done */
                pthread_mutex_unlock(&term->mutex);
                return TRUE;
            }
        } /* else wait for work */
    }  /* else my stack is empty */
}  /* Terminated */


/*------------------------------------------------------------------
 * Function:  Init_term
 * Purpose:   Initialize global term struct
 * Out global:  term
 */
void Init_term(void) {
    term = malloc(sizeof(term_struct));
    term->stack = NULL;
    term->count = 0;
    pthread_cond_init(&term->cond, NULL);
    pthread_mutex_init(&term->mutex, NULL);
}  /* Init_term */


/*------------------------------------------------------------------
 * Function:  Free_term
 * Purpose:   Free the global term data structure
 * Out global:  term
 */
void Free_term(void) {
    pthread_cond_destroy(&term->cond);
    pthread_mutex_destroy(&term->mutex);
    free(term);
}  /* Free_term */

/*------------------------------------------------------------------
 * Function:  Split_stack
 * Purpose:   Return a pointer to a new stack, nonempty stack
 *            created by taking half the records on the input stack
 * In/out arg:  stack
 * Ret val:     new stack
 */
my_stack_t Split_stack(my_stack_t stack, long my_rank) {
    int new_src, new_dest, old_src, old_dest;
    my_stack_t new_stack = Init_stack();

#  ifdef TERM_DEBUG
    Print_stack(stack, my_rank, "Original old stack");
#  endif

    new_dest = 0;
    old_dest = 1;
    for (new_src = 1; new_src < stack->list_sz; new_src += 2) {
        old_src = new_src+1;
        new_stack->list[new_dest++] = stack->list[new_src];
        if (old_src < stack->list_sz)
            stack->list[old_dest++] = stack->list[old_src];
    }

    stack->list_sz = old_dest;
    new_stack->list_sz = new_dest;

#  ifdef TERM_DEBUG
    Print_stack(stack, my_rank, "Updated old stack");
   Print_stack(new_stack, my_rank, "New stack");
#  endif

    return new_stack;
}  /* Split_stack */

/*---------------------------------------------------------------------
 * Function:  Cleanup_msg_queue
 * Purpose:   See what messages are outstanding after termination and
 *            receive them.
 */
void Cleanup_msg_queue(void) {
    int msg_recd;
    MPI_Status status;
    char string1[MAX_STRING];
    int counts[2] = {0,0};
    char work_buf[100000];

    MPI_Iprobe(MPI_ANY_SOURCE, MPI_ANY_TAG, comm, &msg_recd, &status);
    while (msg_recd) {
        /* Just receive the message . . . */
        MPI_Recv(work_buf, 100000, MPI_BYTE, status.MPI_SOURCE,
                 status.MPI_TAG, comm, MPI_STATUS_IGNORE);
        if (status.MPI_TAG == TOUR_TAG)
            counts[1]++;
        else  // Unknown
            counts[0]++;
        MPI_Iprobe(MPI_ANY_SOURCE, MPI_ANY_TAG, comm, &msg_recd, &status);
    }
    sprintf(string1, "Messages not received:  unknown = %d, tour = %d",
            counts[0], counts[1]);
// printf("Proc %d > %s\n", my_rank, string1);
}  /* Cleanup_msg_queue */