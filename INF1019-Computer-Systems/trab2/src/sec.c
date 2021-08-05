#include "definitions.h"

#include "sec.h"

void algo_sec(PTE * tempPTE, PageTableNode * pageTableList)
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

  if(earliestPTNode->current->rBit == 0x01) {
    earliestPTNode->current->rBit = 0x0;
    earliestPTNode->current->lastAccessTime = simulationInfo.time;
    algo_sec(tempPTE, pageTableList);
  }
  else {
    earliestPTNode->current = tempPTE;
  }
}
