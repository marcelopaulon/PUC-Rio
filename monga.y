%{

/*
    Marcelo Paulon - 1411029
    Renan da Fonte - 1412122
*/

#include <stdio.h>
#include <stdlib.h>
#include "../ast.h"
#include "../typechecking.h"
#include "../llvm.h"
#include "lex.yy.h"

void yyerror(const char *);

MongaToken token;

DefinitionList *tree = NULL;

%}

%nonassoc IF_ONLY
%nonassoc TK_ELSE

%token <l> TK_LE
%token <l> TK_GE
%token <l> TK_AND
%token <l> TK_OR
%token <l> TK_IF
%token <l> TK_ELSE
%token <l> TK_CHAR
%token <l> TK_FLOAT
%token <l> TK_INT
%token <l> TK_NEW
%token <l> TK_RETURN
%token <l> TK_VOID
%token <l> TK_WHILE
%token <c> TK_ID
%token <l> TK_UNKNOWN
%token <d> TK_DOUBLE_NUMBER
%token <l> TK_LONG_NUMBER
%token <c> TK_STRING
%token <l> TK_EQ
%token <l> '+'
%token <l> '-'
%token <l> '*'
%token <l> '/'
%token <l> '='
%token <l> '>'
%token <l> '<'
%token <l> '('
%token <l> '['
%token <l> ';'

%union{
    Exp *exp;
    Var *var;
    int l;
    double d;
    char *c;
    List *list;
    Cmd *cmd;
    CmdList *cmdlist;
    CmdBasic *cmdbasic;
    CmdCall *cmdcall;
    ExpList *explist;
    Type *type;
    DefVarList *defvarlist;
    Param *param;
    ParamList *paramlist;
    Block *block;
    Func *func;
    Definition *definition;
    DefinitionList *definitionlist;
}

%type <exp> exp expor expand expcomp expadd expmult expunary expothers numeral
%type <defvarlist> nameslist defvar defvars
%type <cmd> command
%type <cmdlist> commands
%type <cmdbasic> commandbasic
%type <cmdcall> call
%type <var> var
%type <explist> explist
%type <type> type basetype
%type <param> param
%type <paramlist> params funcparams
%type <block> block
%type <func> deffunc
%type <definition> definition
%type <definitionlist> definitions

%start program

%%

program : definitions  { tree = $1; }
        ;

definitions: definition {$$ = mnew(DefinitionList); $$->definition = $1; $$->next = NULL;}
           | definition definitions {$$ = mnew(DefinitionList); $$->definition = $1; $$->next = $2;}
           ;

definition : defvar                { $$ = mnew(Definition); $$->type = TypeDefVar; $$->u.defvarlist = $1; }
           | deffunc               { $$ = mnew(Definition); $$->type = TypeDefFunc; $$->u.deffunc = $1; }
           ;

deffunc : type TK_ID '(' funcparams ')' block { $$ = mnew(Func); $$->type = $1; $$->id = $2; $$->params = $4; $$->block = $6; }
        | TK_VOID TK_ID '(' funcparams ')' block { $$ = mnew(Func); $$->type = NULL; $$->id = $2; $$->params = $4; $$->block = $6; }
        ;

funcparams : params {$$ = $1;}
           | {$$ = NULL;}
           ;

params     : param ',' params {$$ = mnew(ParamList); $$->param = $1; $$->next = $3;}
           | param {$$ = mnew(ParamList); $$->param = $1; $$->next = NULL;}
           ;

param : type TK_ID { $$ = mnew(Param); $$->type = $1; $$->id = $2; }
      ;

nameslist : TK_ID               { 
                                   $$ = mnew(DefVarList);
                                   $$->defvar = mnew(DefVar);
                                   $$->defvar->id = $1;
                                   $$->next = NULL;
                                }
          | TK_ID ',' nameslist { 
                                   $$ = mnew(DefVarList);
                                   $$->defvar = mnew(DefVar);
                                   $$->defvar->id = $1;
                                   $$->next = $3;
                                }
          ;

defvar : type nameslist ';' {
                                DefVarList *temp = $2;
                                $$ = $2; 
                                while(temp != NULL) { 
                                    temp->defvar->type = $1; 
                                    temp = temp->next; 
                                }
                            }
       ;

defvars: defvar {$$ = $1;}
       | defvar defvars {$$ = $1; $$->next = $2;}
       ;

type : basetype       { $$ = $1; }
     | type '[' ']'   { $$ = $1; $$->brackets++; $$->line = $2; }
     ;

basetype : TK_INT   {$$ = baseTypeInit(VarInt); }
         | TK_CHAR  {$$ = baseTypeInit(VarChar); }
         | TK_FLOAT {$$ = baseTypeInit(VarFloat); }
         ;

block : '{' defvars commands '}' { $$ = mnew(Block); $$->vars = $2; $$->cmds = $3; }
      | '{' defvars '}' { $$ = mnew(Block); $$->vars = $2; $$->cmds = NULL; }
      | '{' commands '}' { $$ = mnew(Block); $$->vars = NULL; $$->cmds = $2; }
      | '{' '}' { $$ = mnew(Block); $$->vars = NULL; $$->cmds = NULL; }
      ;

commands : command { $$ = mnew(CmdList); $$->cmd = $1; $$->next = NULL; }
         | command commands { $$ = mnew(CmdList); $$->cmd = $1; $$->next = $2; }
         ;

command : TK_IF '(' exp ')' command %prec IF_ONLY { $$ = mnew(Cmd); $$->tag = CmdIf; $$->e = $3; $$->u.cmd = $5; $$->line = $1; }
        | TK_IF '(' exp ')' command TK_ELSE command { $$ = mnew(Cmd); $$->tag = CmdIfElse; $$->e = $3; $$->u.cmds.c1 = $5; $$->u.cmds.c2 = $7; $$->line = $1; }
        | TK_WHILE '(' exp ')' command { $$ = mnew(Cmd); $$->tag = CmdWhile; $$->e = $3; $$->u.cmd = $5; $$->line = $1; }
        | commandbasic { $$ = mnew(Cmd); $$->tag = CmdBasicCmd; $$->u.cmdBasic = $1; $$->line = -1; }
        ;

commandbasic: var '=' exp ';' { $$ = cmdBasicVarInit($1, $3, $4); }
            | TK_RETURN ';'  { $$ = cmdBasicReturnInit(NULL, $2); }
            | TK_RETURN exp ';' { $$ = cmdBasicReturnInit($2, $3); }
            | call ';' { $$ = cmdBasicCallInit($1, $2); }
            | block { $$ = cmdBasicBlockInit($1); }
            ;

numeral : TK_DOUBLE_NUMBER { $$ = mnew(Exp); $$->type = NULL; $$->tag = ExpFloat; $$->u.d = yylval.d; }
        | TK_LONG_NUMBER { $$ = mnew(Exp); $$->type = NULL; $$->tag = ExpInt; $$->u.l = yylval.l; }
        ;

var : TK_ID { $$ = mnew(Var); $$->u.def.id = $1; $$->tag = VarId; $$->line = -1; }
    | expothers '[' exp ']' {$$ = mnew(Var); $$->tag = VarIndexed; $$->u.indexed.e1 = $1; $$->u.indexed.e2 = $3; $$->line = $2; }
    ;

exp : expor { $$ = $1; }
    ;

expor : expor TK_OR expand { $$ = newBinExp(ExpOr, $1, $3, $2); }
      | expand { $$ = $1; }
      ;

expand : expand TK_AND expcomp { $$ = newBinExp(ExpAnd, $1, $3, $2); }
       | expcomp { $$ = $1; }
       ;

expcomp : expcomp '>' expadd { $$ = newBinExp(ExpGreater, $1, $3, $2); }
        | expcomp '<' expadd { $$ = newBinExp(ExpLess, $1, $3, $2); }
        | expcomp TK_LE expadd { $$ = newBinExp(ExpLessEqual, $1, $3, $2); }
        | expcomp TK_GE expadd { $$ = newBinExp(ExpGreaterEqual, $1, $3, $2); }
        | expcomp TK_EQ expadd { $$ = newBinExp(ExpEqual, $1, $3, $2); }
        | expadd { $$ = $1; }
	    ;

expadd : expadd '+' expmult	    { $$ = newBinExp(ExpAdd, $1, $3, $2); }
       | expadd '-' expmult     { $$ = newBinExp(ExpSub, $1, $3, $2); }
       | expmult                { $$ = $1; }
       ;

expmult : expmult '*' expunary { $$ = newBinExp(ExpMul, $1, $3, $2); }
        | expmult '/' expunary { $$ = newBinExp(ExpDiv, $1, $3, $2); }
        | expunary { $$ = $1; }
	;

expunary : '-' expothers { $$ = mnew(Exp); $$->type = NULL; $$->tag = ExpMinus; $$->u.un = $2; }
         | '!' expothers { $$ = mnew(Exp); $$->type = NULL; $$->tag = ExpNot; $$->u.un = $2; }
         | expothers { $$ = $1; }
         ; 

expothers : numeral { $$ = $1; }
       | TK_STRING { $$ = mnew(Exp); $$->type = NULL; $$->tag = ExpString;  $$->u.c = $1; $$->line = -1; }
       | var { $$ = mnew(Exp); $$->type = NULL; $$->tag = ExpVar;  $$->u.var = $1; $$->line = -1; }
       | call { $$ = mnew(Exp); $$->type = NULL; $$->tag = ExpCall; $$->u.call = $1; $$->line = -1; }
       | '(' exp ')' { $$ = $2; }
       | TK_NEW type '[' exp ']' { $$ = mnew(Exp); $$->type = NULL; $$->tag = ExpNew; $$->u.newexp.type = $2; $$->line = $3; $$->u.newexp.exp = $4;  }
       ;

explist : exp ',' explist { $$ = mnew(ExpList); $$->exp = $1; $$->next = $3; }
        | exp { $$ = mnew(ExpList); $$->exp = $1; $$->next = NULL; }
        ;

call : TK_ID '(' explist ')' {$$ = mnew(CmdCall); $$->id = $1; $$->line = $2; $$->parameters = $3; $$->func = NULL; }
     | TK_ID '(' ')' {$$ = mnew(CmdCall); $$->id = $1; $$->line = $2; $$->parameters = NULL;}
     ;

%%

int main(int argc, char* argv[])
{
  int parsingResult = yyparse();
  char *filename;
  FILE *fp;

  if(argc == 2)
  {
    filename = argv[1];
    fp = fopen(filename, "w");

    if(!fp)
    {
        printf("Error - unable to open file for writing. Exiting.\n");
        exit(-1);
    }
  }  

  if(parsingResult == 0)
  {
    printf("PASS");
    typeCheck(tree);
    printAST(tree);
    if(argc == 2) createLLVM(tree, fp);
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
