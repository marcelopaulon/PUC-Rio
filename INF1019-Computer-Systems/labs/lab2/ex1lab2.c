#include <stdio.h>
#include <stdlib.h>
#include <sys/shm.h>
#include <sys/stat.h>
#include <unistd.h>
#include <sys/wait.h>

#define MAT_WIDTH 5
#define MAT_HEIGHT 10

void imprimeMatriz(int ** mat, int width, int height) {
  int i, j;
  for(i = 0; i < height; i++) {
    for(j = 0; j < width; j++) {
      printf("%d ", mat[i][j]);
    }
    printf("\n");
  }
}

void preencheMatriz(int ** mat, int width, int height) {
  int i, j;
  for(i = 0; i < height; i++) {
    for(j = 0; j < width; j++) {
      mat[i][j] = rand() % 100;
    }
  }
}

int alocaMatriz(int width, int height) {
  int **mat, i, j;
  int segmento = shmget(IPC_PRIVATE, sizeof(int *) * MAT_HEIGHT, IPC_CREAT | IPC_EXCL | S_IRUSR | S_IWUSR);
  int segmentoTemp;

  if(segmento == -1) exit(-1);
  
  mat = (int * *) shmat(segmento, 0, 0);

  for(int i = 0; i < height; i++) {
      segmentoTemp = shmget(IPC_PRIVATE, sizeof(int) * MAT_WIDTH, IPC_CREAT | IPC_EXCL | S_IRUSR | S_IWUSR);
      mat[i] = (int *) shmat(segmentoTemp, 0, 0);
  }

  return segmento;
}

int main(void) {
  int i, j, pid;
  int segmento1, segmento2, segmento3, *p;
  int **mat1, **mat2, **mat3;
  
  segmento1 = alocaMatriz(MAT_WIDTH, MAT_HEIGHT);
  segmento2 = alocaMatriz(MAT_WIDTH, MAT_HEIGHT);
  segmento3 = alocaMatriz(MAT_WIDTH, MAT_HEIGHT);
  
  mat1 = (int * *) shmat(segmento1, 0, 0);
  preencheMatriz(mat1, MAT_WIDTH, MAT_HEIGHT);

  mat2 = (int * *) shmat(segmento2, 0, 0);
  preencheMatriz(mat2, MAT_WIDTH, MAT_HEIGHT);
 
  mat3 = (int * *) shmat(segmento3, 0, 0);

  printf("Matriz 1: \n");
  imprimeMatriz(mat1, MAT_WIDTH, MAT_HEIGHT);
  
  printf("\nMatriz 2: \n");
  imprimeMatriz(mat2, MAT_WIDTH, MAT_HEIGHT);

  for(i = 0; i < MAT_HEIGHT; i++) {
    pid = fork();
    if(pid == 0) {
      for(j = 0; j < MAT_WIDTH; j++) {
        mat3[i][j] = mat1[i][j] + mat2[i][j];
      }
      exit(0);
    }
    waitpid(-1, NULL, 0);
  }
  
  printf("\nMatriz 3: \n");
  imprimeMatriz(mat3, MAT_WIDTH, MAT_HEIGHT);

  shmdt(mat1);
  shmctl(segmento1, IPC_RMID, 0);

  shmdt(mat2);
  shmctl(segmento2, IPC_RMID, 0);
  
  shmdt(mat3);
  shmctl(segmento3, IPC_RMID, 0);

  return 0;
}
