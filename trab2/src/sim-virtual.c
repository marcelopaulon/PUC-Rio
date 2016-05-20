#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define REFERENCED_PAGE 0x01
#define MODIFIED_PAGE 0x10

#define RELEASE 0
#define DEBUG_LVL_1 1
#define DEBUG_LVL_2 2

typedef struct pageTableEntry {
  unsigned int address;
} PTE;

typedef struct page {
  PTE * entries;
  int lastAccessTime;
  char status; // 'R' -> Referenced Page; 'M' -> Modified Page (0, REFERENCED_PAGE, MODIFIED_PAGE, REFERENCED_PAGE | MODIFIED_PAGE)
} Page;

typedef struct pageTable {
  Page * page;
  int pageSize; // 8 KB to 32 KB
} PageTable;

enum PageReplacementAlgorithm {
  PR_NRU, // NRU - Not Recently Used
  PR_LRU, // LRU - Least Recently Used
  PR_SEC  // SEC - Second Chance
};

static int debugLevel = RELEASE;

static int prAlgo = PR_NRU;

static PageTable * pageTable = NULL;

static void clean()
{
  if(pageTable != NULL)
  {
    free(pageTable);
  }
}

static void configure(int pageSizeKB, int physicalMemorySizeKB)
{
  pageTable = (PageTable *) malloc(sizeof(PageTable));
  if(!pageTable)
  {
    printf("\n[ERROR] Unable to create page table. Exiting.\n");
    exit(-1);
  }

  if(pageSizeKB < 8 || pageSizeKB > 32)
  {
    printf("\n[ERROR] Page size must be between 8 KB and 32 KB. Exiting.\n");
    exit(-2);
  }

  if(physicalMemorySizeKB < 128 || physicalMemorySizeKB > 16000)
  {
    printf("\n[ERROR] Physical memory size must be between 128 KB and 16 MB. Exiting.\n");
    exit(-2);
  }

  pageTable->pageSize = pageSizeKB;
}

static void simulateMemoryAccess(unsigned int address, char rw)
{
  if(debugLevel > 1) {
    printf("\nRead: %x %c", address, rw);
    usleep(500000);
  }
}

static int runSimulator(char *inputFile, int pageSizeKB, int physicalMemorySizeKB)
{
  FILE *fp;
  unsigned int address;
  char rw;

  configure(pageSizeKB, physicalMemorySizeKB);

  printf("Configuration: \n\tInput file: %s\n\tPage size: %d KB\n\tPhysical memory size: %dKB\n", inputFile, pageSizeKB, physicalMemorySizeKB);

  if(debugLevel != RELEASE) printf("\tDebug level: %d\n", debugLevel);

  printf("\nStarting simulator...\n");

  fp = fopen(inputFile, "r");
  if(!fp) {
    printf("\nError while opening the specified file.\n");
    return -1;
  }

  while(fscanf(fp, "%x %c ", &address, &rw) == 2)
  {
    simulateMemoryAccess(address, rw);
  }
  
  close(inputFile);
  clean();

  printf("\nSimulation ended successfully!\n");
  return 0;
}

int main(int argc, char *argv[])
{
  printf("\nsim-virtual - Virtual Memory Simulator\n\n");

  if(argc == 5 || (argc == 7 && strcmp(argv[5], "-D")) == 0) {
    prAlgo = atoi(argv[1]);
    if(argc == 7) debugLevel = atoi(argv[6]);
    return runSimulator(argv[2], atoi(argv[3]), atoi(argv[4]));
  }
  else {
    printf("Usage: sim-virtual PageReplacementAlgorithm InputFile PageSizeKB PhysicalMemoryKB (-D DEBUGLEVEL)\n\tPageReplacementAlgorithm - Algorithm to be used for the page replacement (NRU, LRU, or SEC).\n\tInputFile - Path to the input file (.log extension)\n\tPageSizeKB - Page size, in kilobytes\n\tPhysicalMemorySizeKB - Physical memory size, in kilobytes\n\tDEBUGLEVEL - Optional argument. Simulator debug level\n\n");
  }

  return 0;
}
