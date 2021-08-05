#include "definitions.h"

#include "nru.h"

/*
*
* Categories:
*
* 3. referenced, modified
* 2. referenced, not modified
* 1. not referenced, modified
* 0. not referenced, not modified
*
* NRU will pick a random page from the lowest category for removal
*
*/


void algo_nru(PTE * tempPTE, PageTableNode * pageTableList)
{
  int i, cat0 = 0, cat1 = 0, cat2 = 0, cat3 = 0;
  int chosenStatus = -1, randomIndex = -1, foundStatusCounter = 0;
  PageTableNode * tempPTNode;

  tempPTNode = pageTableList;

  for(i = 0; i < simulationInfo.maxPages; i++)
  {
    if(tempPTNode->current == NULL) {
      printf("[ERROR] Invalid page table list structure\n");
      exit(-4);
    }

    if(tempPTNode->current->status == 0) {
      cat0++;
    }
    else if(tempPTNode->current->status == MODIFIED_PAGE) {
      cat1++;
    }
    else if(tempPTNode->current->status == REFERENCED_PAGE) {
      cat2++;
    }
    else if(tempPTNode->current->status == (REFERENCED_PAGE | MODIFIED_PAGE)) {
      cat3++;
    }

    tempPTNode = tempPTNode->next;
  }

  if(cat0 > 0) {
    chosenStatus = 0;
    randomIndex = rand() % cat0;
  }
  else if(cat1 > 0) {
    chosenStatus = MODIFIED_PAGE;
    randomIndex = rand() % cat1;
  }
  else if(cat2 > 0) {
    chosenStatus = REFERENCED_PAGE;
    randomIndex = rand() % cat2;
  }
  else if(cat3 > 0) {
    chosenStatus = (REFERENCED_PAGE | MODIFIED_PAGE);
    randomIndex = rand() % cat3;
  }

  tempPTNode = pageTableList;

  for(i = 0; i < simulationInfo.maxPages; i++)
  {
    if(tempPTNode->current->status == chosenStatus) {
      if(randomIndex == foundStatusCounter) {
        tempPTNode->current = tempPTE;
        return;
      }

      foundStatusCounter++;
    }

    tempPTNode = tempPTNode->next;
  }

  printf("\n[ERROR] NRU Failure - chosenStatus = %x; lastIdx=%d, randomIndex = %d;\n\ncat0=%d; cat1=%d; cat2=%d; cat3=%d;\n", chosenStatus, foundStatusCounter, randomIndex, cat0, cat1, cat2, cat3);
  exit(-6);
}
