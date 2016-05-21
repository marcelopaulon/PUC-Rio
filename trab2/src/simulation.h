typedef struct s_simulation_info {
  int pageSize; // 8 KB to 32 KB

  int pageFaults;

  int pageWrites;

  int time;

  int debugLevel;

  int prAlgo;

  int maxPages;

  int maxEntries;
} SimulationInfo;

typedef struct s_pageTableEntry {
  unsigned int address;
  int lastAccessTime;
  char status; // 'R' -> Referenced Page; 'M' -> Modified Page (0, REFERENCED_PAGE, MODIFIED_PAGE, REFERENCED_PAGE | MODIFIED_PAGE)
} PTE;

typedef struct s_pageTableNode {
  PTE * current;
  struct s_pageTableNode * next;
} PageTableNode;

enum PageReplacementAlgorithm {
  PR_NRU, // NRU - Not Recently Used
  PR_LRU, // LRU - Least Recently Used
  PR_SEC  // SEC - Second Chance
};

extern SimulationInfo simulationInfo;

extern void simulation_clean();

extern void simulation_configure(int pageSizeKB, int physicalMemorySizeKB);

extern void simulation_simulateMemoryAccess(unsigned int address, char rw);
