%{

/*
    Marcelo Paulon - 1411029
    Renan da Fonte - 1412122
*/

#include <stdio.h>
#include <stdlib.h>

#include "lex.yy.h"

#define mnew(T) ((T*) mymalloc (sizeof(T)))

/*typedef enum VarE{
    VarId, 
    VarIndexed
} VarE;

typedef struct Var{
    VarE tag;
    union {
        const char *id;
        struct{
            struct Exp *e1, *e2;
        } indexed;
    } u;
} Var;

typedef enum StatE{
    StatWhile,
    StatIf,
    StatArray
} StatE;

typedef struct Stat{
}

typedef enum ExpE{
    ExpAdd,
    ExpSub,
    ExpMul,
    ExpComp,
    ExpOr,
    ExpAnd
} ExpE;

struct Exp{
    ExpE tag;
    union{
        struct{
            Exp *e1, *e2;
        }bin;
        int bi;
        Var *var;
    }
}

struct List{
    char *id;
    struct List *next;
}*/

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
%token TK_EQ
/*
%union{
    Exp *exp;
    Var *var;
    int i;
}*/

/*%type <exp> expadd expmult expothers*/

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

nameslist : TK_ID               {
                                   /*$$ = mnew(List);
                                   $$->id = $1;
                                   $$->next = NULL;*/
                                }
          | TK_ID ',' nameslist {
                                   /*$$ = mnew(List);
                                   $$->id = $1;
                                   $$->next = $3;*/
                                }
          ;

defvar : type nameslist ';' {}
       ;

defvars: defvar {}
       | defvar defvars {}
       ;

type : basetype       {}
     | type '[' ']'   {}
     ;

basetype : TK_INT   {}
         | TK_CHAR  {}
         | TK_FLOAT {}
         ;

block : '{' defvars commands '}'
      | '{' defvars '}'
      | '{' commands '}'
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
            | TK_RETURN ';'  {}
            | TK_RETURN exp ';' {}
            | call ';'
            | block
            ;

numeral : TK_DOUBLE_NUMBER
        | TK_LONG_NUMBER {/*$$ = mnew(Exp); $$ = u.i = yylval.i;*/}
        ;

var : TK_ID
    | expothers '[' exp ']'
    ;

exp : expor
    ;

expor : expor TK_OR expand
      | expand
      ;

expand : expand TK_AND expcomp
       | expcomp
       ;

expcomp : expcomp '>' expadd {}
        | expcomp '<' expadd
        | expcomp TK_LE expadd
        | expcomp TK_GE expadd
        | expcomp TK_EQ expadd
        | expadd
	;

expadd : expadd '+' expmult	{ 
                                 /* $$ = mnew(Exp);
                                  $$->tag = ExpAdd;
                                  $$->u.bin.e1 = $1;
                                  $$->u.bin.e2 = $3;
                                  $$ = newBinExp(ExpAdd, $1, $3);
                                  $$->line = $2;*/
                                }
       | expadd '-' expmult
       | expmult                { /*$$=$1;*/ }
       ;

expmult : expmult '*' expunary
        | expmult '/' expunary
        | expunary
	;

expunary : '-' expothers
         | '!' expothers
         | expothers
         ; 

expothers : numeral
       | TK_STRING
       | var
       | call
       | '(' exp ')'
       | TK_NEW type '[' exp ']'
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
    printf("FAIL - Unexpected token #%d on line: %d", token.symbol, token.line);
  }

  return 0;
}

void yyerror (char const *s) {
    //fprintf (stderr, "%s\n", s);
    printf("FAIL - Unexpected token #%d on line: %d", token.symbol, token.line);
    exit(-1);
}
