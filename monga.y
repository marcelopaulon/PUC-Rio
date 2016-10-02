%{

/*
    Marcelo Paulon - 1411029
    Renan da Fonte - 1412122
*/

#include <stdio.h>
#include <stdlib.h>
#include "../ast.h"
#include "lex.yy.h"

void yyerror(const char *);

MongaToken token;

%}

%nonassoc IF_ONLY
%nonassoc TK_ELSE

%token <i> TK_LE
%token <i> TK_GE
%token <i> TK_AND
%token <i> TK_OR
%token <i> TK_IF
%token <i> TK_ELSE
%token <i> TK_CHAR
%token <i> TK_FLOAT
%token <i> TK_INT
%token <i> TK_NEW
%token <i> TK_RETURN
%token <i> TK_VOID
%token <i> TK_WHILE
%token <s> TK_ID
%token <i> TK_UNKNOWN
%token <f> TK_DOUBLE_NUMBER
%token <i> TK_LONG_NUMBER
%token <s> TK_STRING
%token <i> TK_EQ
%token <i> '+'
%token <i> '-'
%token <i> '*'
%token <i> '='
%token <i> '>'
%token <i> '<'

%union{
    Exp *exp;
    Var *var;
    int i;
    double f;
    char *s;
    List *list;
    CmdBasic *cmdbasic;
    ExpList *explist;
    Type *type;
}

%type <exp> exp expadd expmult expunary expothers numeral
%type <list> nameslist
%type <cmdbasic> commandbasic
%type <var> var
%type <explist> explist
%type <type> type basetype

%start program

%%

program : definitions  {NULL;}
        ;

definitions: definition {NULL;}
           | definition definitions {NULL;}
           ;

definition : defvar                {NULL;}
           | deffunc               {NULL;}
           ;

deffunc : type TK_ID '(' funcparams ')' block {NULL;}
        | TK_VOID TK_ID '(' funcparams ')' block {NULL;}
        ;

funcparams : params {NULL;}
           | {NULL;}
           ;

params     : param ',' params {NULL;}
           | param {NULL;}
           ;

param : type TK_ID {NULL;}
      ;

nameslist : TK_ID               { 
                                   $$ = mnew(List);
                                   $$->id = $1;
                                   $$->next = NULL;
                                }
          | TK_ID ',' nameslist { 
                                   $$ = mnew(List);
                                   $$->id = $1;
                                   $$->next = $3;
                                }
          ;

defvar : type nameslist ';' {NULL;}
       ;

defvars: defvar {NULL;}
       | defvar defvars {NULL;}
       ;

type : basetype       { $$ = $1; }
     | type '[' ']'   { $$ = $1; $1->brackets++; }
     ;

basetype : TK_INT   {$$ = mnew(Type); $$->name = VarInt; $$->brackets = 0; }
         | TK_CHAR  {$$ = mnew(Type); $$->name = VarChar; $$->brackets = 0; }
         | TK_FLOAT {$$ = mnew(Type); $$->name = VarFloat; $$->brackets = 0; }
         ;

block : '{' defvars commands '}' {NULL;}
      | '{' defvars '}' {NULL;}
      | '{' commands '}' {NULL;}
      | '{' '}' {NULL;}
      ;

commands : command {NULL;}
         | command commands {NULL;}
         ;

command : TK_IF '(' exp ')' command %prec IF_ONLY {NULL;}
        | TK_IF '(' exp ')' command TK_ELSE command {NULL;}
        | TK_WHILE '(' exp ')' command {NULL;}
        | commandbasic {NULL;}
        ;

commandbasic: var '=' exp ';' {
                                $$ = mnew(CmdBasic);
                                $$->var = $1;
                                $$->exp = $3;
                                $$->tkNumber = '=';
                              }
            | TK_RETURN ';'  {
                                $$ = mnew(CmdBasic);
                                $$->tkNumber = TK_RETURN;
                             }
            | TK_RETURN exp ';' {
                                $$ = mnew(CmdBasic);
                                $$->exp = $2;
                                $$->tkNumber = TK_RETURN;
                                }
            | call ';' {NULL;}
            | block {NULL;}
            ;

numeral : TK_DOUBLE_NUMBER {$$ = mnew(Exp); $$->u.f = yylval.f;}
        | TK_LONG_NUMBER {$$ = mnew(Exp); $$->u.i = yylval.i;}
        ;

var : TK_ID {NULL;}
    | expothers '[' exp ']' {NULL;}
    ;

exp : expor {NULL;}
    ;

expor : expor TK_OR expand {NULL;}
      | expand {NULL;}
      ;

expand : expand TK_AND expcomp {NULL;}
       | expcomp {NULL;}
       ;

expcomp : expcomp '>' expadd {NULL;}
        | expcomp '<' expadd {NULL;}
        | expcomp TK_LE expadd {NULL;}
        | expcomp TK_GE expadd {NULL;}
        | expcomp TK_EQ expadd {NULL;}
        | expadd {NULL;}
	;

expadd : expadd '+' expmult	    { 
                                  $$ = mnew(Exp);
                                  $$->tag = ExpAdd;
                                  $$->u.bin.e1 = $1;
                                  $$->u.bin.e2 = $3;
                                  $$ = newBinExp(ExpAdd, $1, $3);
                                  $$->line = $2;
                                }
       | expadd '-' expmult {NULL;}
       | expmult                { $$=$1; }
       ;

expmult : expmult '*' expunary {NULL;}
        | expmult '/' expunary {NULL;}
        | expunary {NULL;}
	;

expunary : '-' expothers {NULL;}
         | '!' expothers {NULL;}
         | expothers {NULL;}
         ; 

expothers : numeral {NULL;}
       | TK_STRING {NULL;}
       | var {NULL;}
       | call {NULL;}
       | '(' exp ')' {NULL;}
       | TK_NEW type '[' exp ']' {NULL;}
       ;

explist : exp ',' explist {
                            $$ = mnew(ExpList);
                            $$->exp = $1;
                            $$->next = $3;
                          }
        | exp {NULL;}
        ;

call : TK_ID '(' explist ')' {NULL;}
     | TK_ID '(' ')' {NULL;}
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
    printf("FAIL - Unexpected token #%d on line: %d", token.symbol, token.line);
  }

  return 0;
}

void yyerror (char const *s) {
    //fprintf (stderr, "%s\n", s);
    printf("FAIL - Unexpected token #%d on line: %d", token.symbol, token.line);
    exit(-1);
}
