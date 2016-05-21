#include "definitions.h"

#include "lru.h"

static PageTableNode * pageTableList = NULL;

SimulationInfo simulationInfo;

void simulation_clean()
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

void simulation_configure(int pageSizeKB, int physicalMemorySizeKB)
{
  int temp, bits = 0, i, j;

  simulationInfo.time = 0;
  simulationInfo.pageFaults = 0;

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

  simulationInfo.pageSize = pageSizeKB;

  temp = simulationInfo.pageSize * 1024;
  while(temp >>= 1) {
    bits++;
  }

  simulationInfo.maxPages = (physicalMemorySizeKB / pageSizeKB) * 1024;
  simulationInfo.maxEntries = (pageSizeKB * 1024) / sizeof(PTE);

  if(simulationInfo.debugLevel > 0) {
    printf("maxPages = %d; maxEntries = %d; bits = %d;\n\n", simulationInfo.maxPages, simulationInfo.maxEntries, bits);
  }
}

void simulation_simulateMemoryAccess(unsigned int address, char rw)
{
  int temp, bits = 0, pageIndex, pageEntryPosition, i;
  PageTableNode * tempPTNode;
  PTE * tempPTE;
  temp = simulationInfo.pageSize * 1024;
  while(temp >>= 1) {
    bits++;
  }

  pageIndex = address >> bits;
  pageEntryPosition = (address << (32 - bits)) >> (32 - bits);

  if(simulationInfo.debugLevel > 1) {
    printf("\nRead: %x %c - Page index = %d (position = %d)", address, rw, pageIndex, pageEntryPosition);
    usleep(500000);
  }

  simulationInfo.time++;

  tempPTNode = pageTableList;
  
  for(i = 0; i < simulationInfo.maxPages; i++)
  {
    if(tempPTNode == NULL) break;

    if(tempPTNode->current == NULL)
    {
      if(simulationInfo.debugLevel > 1) {
        printf("Page fault - new - %x\n", address);
      }
      simulationInfo.pageFaults++;
      tempPTE = (PTE *) malloc(sizeof(PTE));
      tempPTE->address = address;
      tempPTE->lastAccessTime = simulationInfo.time;
      tempPTNode->current = tempPTE;
      return;
    }

    if(tempPTNode->current->address == address)
    {
      tempPTNode->current->lastAccessTime = simulationInfo.time;
      if(simulationInfo.debugLevel > 1) {
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

  simulationInfo.pageFaults++;

  if(simulationInfo.debugLevel > 1) {
    printf("Page fault - %x\n", address);
  }

  tempPTE = (PTE *) malloc(sizeof(PTE));
  tempPTE->address = address;
  tempPTE->lastAccessTime = simulationInfo.time;

  if(simulationInfo.prAlgo == PR_LRU) {
    algo_lru(tempPTE, pageTableList);
  }
  else if(simulationInfo.prAlgo == PR_NRU) {
    printf("NRU Not implemented yet!\n");
    exit(-1);
  }
  else if(simulationInfo.prAlgo == PR_SEC) {
    printf("SEC Not implemented yet!\n");
    exit(-1);
  }
  else {
    printf("Invalid algorithm\n");
    exit(-1);
  }
}
