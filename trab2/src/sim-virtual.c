#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define REFERENCED_PAGE 0x01
#define MODIFIED_PAGE 0x10

#define RELEASE 0
#define DEBUG_LVL_1 1
#define DEBUG_LVL_2 2

typedef struct s_pageTableEntry {
  unsigned int address;
  int lastAccessTime;
  char status; // 'R' -> Referenced Page; 'M' -> Modified Page (0, REFERENCED_PAGE, MODIFIED_PAGE, REFERENCED_PAGE | MODIFIED_PAGE)
} PTE;

typedef struct s_pageTableNode {
  PTE * current;
  struct s_pageTableNode * next;
} PageTableNode;

static int pageSize; // 8 KB to 32 KB

static int pageFaults = 0;

static int time = 0;

enum PageReplacementAlgorithm {
  PR_NRU, // NRU - Not Recently Used
  PR_LRU, // LRU - Least Recently Used
  PR_SEC  // SEC - Second Chance
};

static int debugLevel = RELEASE;

static int prAlgo = PR_NRU;

static PageTableNode * pageTableList = NULL;

static int maxPages;
static int maxEntries;

static void clean()
{
  PageTableNode * temp;
  if(pageTableList != NULL)
  {
    while(pageTableList->next != NULL)
    {
      temp = pageTableList;
      pageTableList = pageTableList->next;
      free(temp->current);
      free(temp);
    }
    if(pageTableList->current != NULL) free(pageTableList->current);
    free(pageTableList);
  }
}

static void configure(int pageSizeKB, int physicalMemorySizeKB)
{
  int temp, bits = 0, i, j;

  pageTableList = (PageTableNode *) malloc(sizeof(PageTableNode));
  if(!pageTableList)
  {
    printf("\n[ERROR] Unable to create page table list. Exiting.\n");
    exit(-1);
  }

  pageTableList->current = NULL;
  pageTableList->next = NULL;

  if(pageSizeKB < 8 || pageSizeKB > 32)
  {
    printf("\n[ERROR] Page size must be between 8 KB and 32 KB. Exiting.\n");
    exit(-2);
  }

  if(physicalMemorySizeKB < 128 || physicalMemorySizeKB > 16 * 1024)
  {
    printf("\n[ERROR] Physical memory size must be between 128 KB and 16 MB. Exiting.\n");
    exit(-2);
  }

  pageSize = pageSizeKB;

  temp = pageSize * 1024;
  while(temp >>= 1) {
    bits++;
  }

  maxPages = (physicalMemorySizeKB / pageSizeKB) * 1024;
  maxEntries = (pageSizeKB * 1024) / sizeof(PTE);

  if(debugLevel > 0) {
    printf("maxPages = %d; maxEntries = %d; bits = %d;\n\n", maxPages, maxEntries, bits);
  }
}

static void algo_owrt1st(PTE * tempPTE)
{
  int i;
  PageTableNode * tempPTNode;

  tempPTNode = pageTableList;

  for(i = 0; i < maxPages; i++)
  {
    if(tempPTNode->current == NULL) {
      printf("[ERROR] Invalid page table list structure\n");
      exit(-4);
    }

    tempPTNode = tempPTNode->next;
  }

  pageTableList->current = tempPTE;
}

static void algo_lru(PTE * tempPTE)
{
  int i, earliestTime = time;
  PageTableNode * tempPTNode;
  PageTableNode * earliestPTNode = pageTableList;

  tempPTNode = pageTableList;

  for(i = 0; i < maxPages; i++)
  {
    if(tempPTNode->current == NULL) {
      printf("[ERROR] Invalid page table list structure\n");
      exit(-4);
    }

    if(tempPTNode->current->lastAccessTime < earliestTime) {
      earliestPTNode = tempPTNode;
      earliestTime = earliestPTNode->current->lastAccessTime;
    }

    tempPTNode = tempPTNode->next;
  }

  earliestPTNode->current = tempPTE;
}

static void simulateMemoryAccess(unsigned int address, char rw)
{
  int temp, bits = 0, pageIndex, pageEntryPosition, i;
  PageTableNode * tempPTNode;
  PTE * tempPTE;
  temp = pageSize * 1024;
  while(temp >>= 1) {
    bits++;
  }

  pageIndex = address >> bits;
  pageEntryPosition = (address << (32 - bits)) >> (32 - bits);

  if(debugLevel > 1) {
    printf("\nRead: %x %c - Page index = %d (position = %d)", address, rw, pageIndex, pageEntryPosition);
    usleep(500000);
  }

  time++;

  tempPTNode = pageTableList;
  
  for(i = 0; i < maxPages; i++)
  {
    if(tempPTNode == NULL) break;

    if(tempPTNode->current == NULL)
    {
      if(debugLevel > 1) {
        printf("Page fault - new - %x\n", address);
      }
      pageFaults++;
      tempPTE = (PTE *) malloc(sizeof(PTE));
      tempPTE->address = address;
      tempPTE->lastAccessTime = time;
      tempPTNode->current = tempPTE;
      return;
    }

    if(tempPTNode->current->address == address)
    {
      tempPTNode->current->lastAccessTime = time;
      if(debugLevel > 1) {
        printf("FOUND %x in memory\n", address);
      }

      return;
    }

    if(tempPTNode->next == NULL) {
      tempPTNode->next = (PageTableNode *) malloc(sizeof(PageTableNode));
      tempPTNode->next->current = NULL;
      tempPTNode->next->next = NULL;
    }

    tempPTNode = tempPTNode->next;
  }

  pageFaults++;

  if(debugLevel > 1) {
    printf("Page fault - %x\n", address);
  }

  tempPTE = (PTE *) malloc(sizeof(PTE));
  tempPTE->address = address;
  tempPTE->lastAccessTime = time;

  if(prAlgo == PR_LRU) {
    algo_lru(tempPTE);
  }
  else if(prAlgo == PR_NRU) {
    printf("NRU Not implemented yet!\n");
    exit(-1);
  }
  else if(prAlgo == PR_SEC) {
    printf("SEC Not implemented yet!\n");
    exit(-1);
  }
  else {
    algo_owrt1st(tempPTE);
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

  printf("\n\t-- Statistics --\t\n\nPage faults: %d\nWritten pages:0\n", pageFaults);

  return 0;
}

int main(int argc, char *argv[])
{
  printf("\nsim-virtual - Virtual Memory Simulator\n\n");

  if(argc == 5 || (argc == 7 && strcmp(argv[5], "-D") == 0)) {
    if(strcmp(argv[1], "NRU") == 0) {
        prAlgo = PR_NRU;
    }
    else if(strcmp(argv[1], "LRU") == 0) {
        prAlgo = PR_LRU;
    }
    else if(strcmp(argv[1], "SEC") == 0) {
        prAlgo = PR_SEC;
    }
    else {
        printf("\n[WARN] No valid algorithm specified. Will override every first element after max pages reached\n");
        prAlgo = -1;
    }

    if(argc == 7) debugLevel = atoi(argv[6]);
    return runSimulator(argv[2], atoi(argv[3]), atoi(argv[4]));
  }
  else {
    printf("Usage: sim-virtual PageReplacementAlgorithm InputFile PageSizeKB PhysicalMemoryKB (-D DEBUGLEVEL)\n\tPageReplacementAlgorithm - Algorithm to be used for the page replacement (NRU, LRU, or SEC).\n\tInputFile - Path to the input file (.log extension)\n\tPageSizeKB - Page size, in kilobytes\n\tPhysicalMemorySizeKB - Physical memory size, in kilobytes\n\tDEBUGLEVEL - Optional argument. Simulator debug level\n\n");
  }

  return 0;
}
