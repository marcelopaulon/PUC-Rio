#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <stdlib.h>

#include "lex.yy.h"

MongaToken token;

char * getTokenString(int value)
{
  switch(value)
  {
      case TK_LE:
        return "<=";
        break;

      case TK_GE:
        return ">=";
        break;

      case TK_AND:
        return "and";
        break;

      case TK_OR:
        return "or";
        break;

      case TK_IF:
        return "if";
        break;

      case TK_ELSE:
        return "else";
        break;

      case TK_CHAR:
        return "char";
        break;

      case TK_FLOAT:
        return "float";
        break;

      case TK_INT:
        return "int";
        break;

      case TK_NEW:
        return "new";
        break;

      case TK_RETURN:
        return "return";
        break;

      case TK_VOID:
        return "void";
        break;

      case TK_WHILE:
        return "while";
        break;

      case TK_ID:
        return "IDENTIFIER_TOKEN";
        break;

      case TK_DOUBLE_NUMBER:
        return "DOUBLE_NUMBER";
        break;

      case TK_LONG_NUMBER:
        return "LONG_NUMBER";
        break;

      case TK_STRING:
        return "STRING";
        break;
  }

  return "TOKEN";
}

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

  while ((tokenNumber = yylex())) 
  {
    if(DEBUG == 1)
    {
    	printf("Token: %d (%s) - line %d", tokenNumber, getTokenString(tokenNumber), token.line);
    }

    fprintf(fp, "%d(%d)", tokenNumber, token.line);

    if(tokenNumber == TK_ID || tokenNumber == TK_STRING)
    {
      if(DEBUG == 1)
      {
        printf(" - Value: %s\n", token.data.c);
      }
      
      fprintf(fp, "%s", token.data.c);
    }
    else if(tokenNumber == TK_DOUBLE_NUMBER)
    {
      if(DEBUG == 1)
      {
        printf(" - Value: %a\n", token.data.d);
      }

      fprintf(fp, "%a / %f", token.data.d, token.data.d);
    }
    else if(tokenNumber == TK_LONG_NUMBER)
    {
      if(DEBUG == 1)
      {
        printf(" - Value: %llu\n", token.data.l);
      }

      fprintf(fp, "%llu", token.data.l);
    }

    if(DEBUG == 1)
    {
    	printf("\n");
    }

    fprintf(fp, "\n");
  }

  fprintf(fp, "END\n");

  fclose(fp);

  return 0;
}
