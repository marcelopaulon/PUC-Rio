#if !defined(LEXYY_H)
#define LEXYY_H

#define DEBUG 0

#define MONGA_YACC
#define MONGA_UNION_TYPE YYSTYPE

#include "y.tab.h"

extern int yylex(void);

typedef union mongaData {
  unsigned long long int l;
  double d;
  char *c;
} MongaData;

typedef struct mongaToken {
  int symbol;
  YYSTYPE data;
  int line;
} MongaToken;

#endif
