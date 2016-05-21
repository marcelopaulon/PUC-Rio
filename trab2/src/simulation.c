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

static void createTableList()
{
  pageTableList = (PageTableNode *) malloc(sizeof(PageTableNode));
  if(!pageTableList)
  {
    printf("\n[ERROR] Unable to create page table list. Exiting.\n");
    exit(-1);
  }

  pageTableList->current = NULL;
  pageTableList->next = NULL;
}

static int getNeededBits(int value)
{
  int bits = 0;
  while(value >>= 1) {
    bits++;
  }

  return bits;
}

void simulation_configure(int pageSizeKB, int physicalMemorySizeKB)
{
  int bits, i, j;

  simulationInfo.time = 0;
  simulationInfo.pageFaults = 0;
  simulationInfo.pageWrites = 0;

  createTableList();

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

  bits = getNeededBits(simulationInfo.pageSize * 1024);

  simulationInfo.maxPages = (physicalMemorySizeKB / pageSizeKB) * 1024;
  simulationInfo.maxEntries = (pageSizeKB * 1024) / sizeof(PTE);

  if(simulationInfo.debugLevel > 0) {
    printf("maxPages = %d; maxEntries = %d; bits = %d;\n\n", simulationInfo.maxPages, simulationInfo.maxEntries, bits);
  }
}

static void pageFault_add(PTE * pageTableEntry) {
  simulationInfo.pageFaults++;
  
  if(simulationInfo.debugLevel > 1) {
    printf("\nPage fault - new - %x\n", pageTableEntry->address);
  }
}

static void pageFault_replace(PTE * pageTableEntry) {
  simulationInfo.pageFaults++;
  
  if(simulationInfo.debugLevel > 1) {
    printf("\nPage fault - %x\n", pageTableEntry->address);
  }

  if(simulationInfo.prAlgo == PR_LRU) {
    algo_lru(pageTableEntry, pageTableList);
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

static PTE * createPTE(unsigned int address, char rw, int time) {
  PTE * newPTE;
  newPTE = (PTE *) malloc(sizeof(PTE));
  newPTE->address = address;
  newPTE->lastAccessTime = time;

  if(rw == 'W') {
    newPTE->status = MODIFIED_PAGE;
    simulationInfo.pageWrites++;
  }
  else {
    newPTE->status = 0;
  }

  return newPTE;
}

static PageTableNode * createPageTableNode() {
  PageTableNode * newPTNode = (PageTableNode *) malloc(sizeof(PageTableNode));
  newPTNode->current = NULL;
  newPTNode->next = NULL;
  return newPTNode;
}

static void accessMemory(PTE * pageTableEntry, char rw) {
  pageTableEntry->lastAccessTime = simulationInfo.time;

  pageTableEntry->status = REFERENCED_PAGE;

  if(rw == 'W') {
    pageTableEntry->status |= MODIFIED_PAGE;
  }

  if(simulationInfo.debugLevel > 1) {
    printf("\nFOUND %x in memory\n", pageTableEntry->address);
  }
}

void simulation_simulateMemoryAccess(unsigned int address, char rw)
{
  int bits, pageIndex, pageEntryPosition, i;
  PageTableNode * tempPTNode;

  bits = getNeededBits(simulationInfo.pageSize * 1024);

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
      tempPTNode->current = createPTE(address, rw, simulationInfo.time);
      pageFault_add(tempPTNode->current);
      return;
    }

    if(tempPTNode->current->address == address)
    {
      accessMemory(tempPTNode->current, rw);

      return;
    }

    if(tempPTNode->next == NULL) {
      tempPTNode->next = createPageTableNode();
    }

    tempPTNode = tempPTNode->next;
  }

  pageFault_replace( createPTE(address, rw, simulationInfo.time) );
}
