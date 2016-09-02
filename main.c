#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <stdlib.h>

#include "monga.h"

extern FILE *yyin, *yyout;

MongaToken token;

extern int yylex (void);

int main( int argc, char **argv )
{
  int tokenNumber;

  ++argv, --argc;  /* skip over program name */
  if ( argc > 0 )
    yyin = fopen( argv[0], "r" );
  else
    yyin = stdin;

  while ((tokenNumber = yylex())) {
    printf("Token: %d - line %d\n", tokenNumber, token.line);

    if(tokenNumber == TK_ID || tokenNumber == TK_STRING)
    {
      printf("Value: %s\n", token.data.c);
    }
    else if(tokenNumber == TK_DOUBLE_NUMBER)
    {
      printf("Value: %f\n", token.data.d);
    }
    else if(tokenNumber == TK_LONG_NUMBER)
    {
      printf("Value: %llu\n", token.data.l);
    }
  }

  return 0;
}
