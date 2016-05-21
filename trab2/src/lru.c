#include "definitions.h"

#include "lru.h"

void algo_lru(PTE * tempPTE, PageTableNode * pageTableList)
{
  int i, earliestTime = simulationInfo.time;
  PageTableNode * tempPTNode;
  PageTableNode * earliestPTNode = pageTableList;

  tempPTNode = pageTableList;

  for(i = 0; i < simulationInfo.maxPages; i++)
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
