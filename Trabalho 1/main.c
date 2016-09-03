#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <stdlib.h>

#include "monga.h"

#define DEBUG 1

extern FILE *yyin, *yyout;

MongaToken token;

extern int yylex (void);

int main( int argc, char **argv )
{
  FILE *fp = fopen("output.txt", "w");
  int tokenNumber;

  if(!fp)
  {
    printf("Unable to open output.txt file for writing. Exiting.\n");
    exit(-1);
  }

  ++argv, --argc;  /* skip over program name */
  if ( argc > 0 )
    yyin = fopen( argv[0], "r" );
  else
    yyin = stdin;

  fprintf(fp, "START\n");

  while ((tokenNumber = yylex())) {
    if(DEBUG == 1)
    {
    	printf("Token: %d - line %d\n", tokenNumber, token.line);
    }

    fprintf(fp, "%d(%d)", tokenNumber, token.line);

    if(tokenNumber == TK_ID || tokenNumber == TK_STRING)
    {
      if(DEBUG == 1)
      {
        printf("Value: %s\n", token.data.c);
      }
      
      fprintf(fp, "%s", token.data.c);
    }
    else if(tokenNumber == TK_DOUBLE_NUMBER)
    {
      if(DEBUG == 1)
      {
        printf("Value: %f\n", token.data.d);
      }

      fprintf(fp, "%f", token.data.d);
    }
    else if(tokenNumber == TK_LONG_NUMBER)
    {
      if(DEBUG == 1)
      {
        printf("Value: %llu\n", token.data.l);
      }

      fprintf(fp, "%llu", token.data.l);
    }

    fprintf(fp, "\n");
  }

  fprintf(fp, "END\n");

  fclose(fp);

  return 0;
}
