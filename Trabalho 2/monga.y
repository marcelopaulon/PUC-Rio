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

%nonassoc IF_ONLY
%nonassoc TK_ELSE

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

%start program

%%

program : definitions  {}
        ;

definitions: definition {}
           | definition definitions {}
           ;

definition : defvar                {}
           | deffunc               {}
           ;

deffunc : type TK_ID '(' funcparams ')' block {}
        | TK_VOID TK_ID '(' funcparams ')' block {}
        ;

funcparams : params
           | {}
           ;

params     : param ',' params
           | param
           ;

param : type TK_ID
      ;

nameslist : TK_ID  {}
          | TK_ID ',' nameslist {}
          ;

defvar : type nameslist ';' {}
       ;

defvars: defvar {}
       | defvar defvars {}
       ;

type : basetype       {}
     | type '[' ']'   {}
     ;

basetype   : TK_INT   {}
           | TK_CHAR  {}
           | TK_FLOAT {}
           ;

block : '{' defvars commands '}'
      | '{' '}'
      ;

commands : command
         | command commands
         ;

command : TK_IF '(' exp ')' command %prec IF_ONLY
        | TK_IF '(' exp ')' command TK_ELSE command
        | TK_WHILE '(' exp ')' command
        | commandbasic
        ;

commandbasic: var '=' exp ';'
            | TK_RETURN ';'
            | TK_RETURN exp ';'
            | call ';'
            | block
            ;

numeral : TK_DOUBLE_NUMBER
        | TK_LONG_NUMBER
        ;

var : TK_ID
    | expothers '[' exp ']'
    ;

expunary : '+' exp
         | '-' exp
         | '!' exp
         | expmult
         ; 

expmult : expadd '*' expadd
	| expadd '%' expadd
        | expadd '/' expadd
        | expadd
	;

expadd : expcomp '+' expcomp
       | expcomp '-' expcomp
       | expcomp
       ;


expcomp : expequal '>' expequal
        | expequal '<' expequal
        | expequal TK_LE expequal
        | expequal TK_GE expequal
        | expequal
	;

expequal : expand '=' '=' expand
         | expand
	 ;

expand : expor TK_AND expor
       | expor
       ;

expor : expothers TK_OR expothers
      | expothers
      ;

expothers : numeral
       | TK_STRING
       | var
       | call
       | TK_NEW type '[' exp ']'
       ;

exp : '(' exp ')'
    | expunary
    ;

explist : exp ',' explist
        | exp
        ;

call : TK_ID '(' explist ')'
     | TK_ID '(' ')'
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
