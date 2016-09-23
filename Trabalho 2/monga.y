%{

/*
    Marcelo Paulon - 1411029
    Renan da Fonte - 1412122
*/

#include <stdio.h>
#include <stdlib.h>

#include "lex.yy.h"

void yyerror(const char *);

MongaToken token;

%}

%token TK_LE
%token TK_GE
%token TK_AND
%token TK_OR
%token TK_IF
%token TK_ELSE
%token TK_CHAR
%token TK_FLOAT
%token TK_INT
%token TK_NEW
%token TK_RETURN
%token TK_VOID
%token TK_WHILE
%token TK_ID
%token TK_UNKNOWN
%token TK_DOUBLE_NUMBER
%token TK_LONG_NUMBER
%token TK_STRING

%%

program : definitions  {}
        ;

definitions: definition {}
           | definition definition {}
           ;

definition : defvar                {}
           ;

nameslist : TK_ID  {}
          | TK_ID ',' nameslist
          ;

defvar : type nameslist ';'
       ;

type   : TK_INT
       | TK_CHAR
       | TK_FLOAT
       ;

%%

int main(void)
{
  int parsingResult = yyparse();

  if(parsingResult == 0)
  {
    printf("PASS");
  }
  else
  {
    printf("FAIL");
  }

  return 0;
}

void yyerror (char const *s) {
    //fprintf (stderr, "%s\n", s);
    printf("FAIL");
    exit(-1);
}
