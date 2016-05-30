#include <time.h>

#include "definitions.h"

static int runSimulator(char *algorithm, char *inputFile, int pageSizeKB, int physicalMemorySizeKB)
{
  FILE *fp;
  unsigned int address;
  char rw;

  simulation_configure(pageSizeKB, physicalMemorySizeKB);

  printf("Configuration: \n\tAlgorithm: %s\n\tInput file: %s\n\tPage size: %d KB\n\tPhysical memory size: %dKB\n", algorithm, inputFile, pageSizeKB, physicalMemorySizeKB);

  if(simulationInfo.debugLevel != RELEASE) printf("\tDebug level: %d\n", simulationInfo.debugLevel);

  printf("\nStarting simulator...\n");

  fp = fopen(inputFile, "r");
  if(!fp) {
    printf("\nError while opening the specified file.\n");
    return -1;
  }

  while(fscanf(fp, "%x %c ", &address, &rw) == 2)
  {
    simulation_simulateMemoryAccess(address, rw);
  }
  
  fclose(fp);
  simulation_clean();

  printf("\nSimulation ended successfully!\n");

  printf("\n\t-- Statistics --\t\n\nPage faults: %d\nWritten pages: %d\n", simulationInfo.pageFaults, simulationInfo.pageWrites);

  return 0;
}

int main(int argc, char *argv[])
{
  printf("\nsim-virtual - Virtual Memory Simulator\n\n");

  srand(time(NULL));

  if(argc == 5 || (argc == 7 && strcmp(argv[5], "-D") == 0)) {
    if(strcmp(argv[1], "NRU") == 0) {
        simulationInfo.prAlgo = PR_NRU;
    }
    else if(strcmp(argv[1], "LRU") == 0) {
        simulationInfo.prAlgo = PR_LRU;
    }
    else if(strcmp(argv[1], "SEC") == 0) {
        simulationInfo.prAlgo = PR_SEC;
    }
    else {
        printf("\n[ERROR] No valid algorithm specified.\n");
        exit(-1);
    }

    if(argc == 7) simulationInfo.debugLevel = atoi(argv[6]);
    return runSimulator(argv[1], argv[2], atoi(argv[3]), atoi(argv[4]));
  }
  else {
    printf("Usage: sim-virtual PageReplacementAlgorithm InputFile PageSizeKB PhysicalMemoryKB (-D DEBUGLEVEL)\n\tPageReplacementAlgorithm - Algorithm to be used for the page replacement (NRU, LRU, or SEC).\n\tInputFile - Path to the input file (.log extension)\n\tPageSizeKB - Page size, in kilobytes\n\tPhysicalMemorySizeKB - Physical memory size, in kilobytes\n\tDEBUGLEVEL - Optional argument. Simulator debug level\n\n");
  }

  return 0;
}
