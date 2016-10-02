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

DefinitionList *tree = NULL;

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
%token <i> '/'
%token <i> '='
%token <i> '>'
%token <i> '<'
%token <i> '('
%token <i> '['
%token <i> ';'

%union{
    Exp *exp;
    Var *var;
    int i;
    double f;
    char *s;
    List *list;
    Cmd *cmd;
    CmdList *cmdlist;
    CmdBasic *cmdbasic;
    CmdCall *cmdcall;
    ExpList *explist;
    Type *type;
    DefVar *defvar;
    DefVarList *defvarlist;
    Param *param;
    ParamList *paramlist;
    Block *block;
    Func *func;
    Definition *definition;
    DefinitionList *definitionlist;
}

%type <exp> exp expor expand expcomp expadd expmult expunary expothers numeral
%type <list> nameslist
%type <cmd> command
%type <cmdlist> commands
%type <cmdbasic> commandbasic
%type <cmdcall> call
%type <var> var
%type <explist> explist
%type <type> type basetype
%type <defvar> defvar
%type <defvarlist> defvars
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

definition : defvar                { $$ = mnew(Definition); $$->type = TypeDefVar; $$->u.defvar = $1; }
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

defvar : type nameslist ';' {$$ = mnew(DefVar); $$->type = $1; $$->nameslist = $2;}
       ;

defvars: defvar {$$ = mnew(DefVarList); $$->defvar = $1; $$->next = NULL;}
       | defvar defvars {$$ = mnew(DefVarList); $$->defvar = $1; $$->next = $2;}
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

command : TK_IF '(' exp ')' command %prec IF_ONLY { $$ = mnew(Cmd); $$->type = CmdIf; $$->e = $3; $$->u.cmd = $5; $$->line = $1; }
        | TK_IF '(' exp ')' command TK_ELSE command { $$ = mnew(Cmd); $$->type = CmdIf; $$->e = $3; $$->u.cmds.c1 = $5; $$->u.cmds.c2 = $7; $$->line = $1; }
        | TK_WHILE '(' exp ')' command { $$ = mnew(Cmd); $$->type = CmdWhile; $$->e = $3; $$->u.cmd = $5; $$->line = $1; }
        | commandbasic { $$ = mnew(Cmd); $$->type = CmdBasicE; $$->u.cmdBasic = $1; }
        ;

commandbasic: var '=' exp ';' { $$ = cmdBasicVarInit($1, $3, $4); }
            | TK_RETURN ';'  { $$ = cmdBasicReturnInit(NULL, $2); }
            | TK_RETURN exp ';' { $$ = cmdBasicReturnInit($2, $3); }
            | call ';' { $$ = cmdBasicCallInit($1, $2); }
            | block {NULL;}
            ;

numeral : TK_DOUBLE_NUMBER { $$ = mnew(Exp); $$->tag = ExpFloat; $$->u.f = yylval.f; }
        | TK_LONG_NUMBER { $$ = mnew(Exp); $$->tag = ExpInt; $$->u.i = yylval.i; }
        ;

var : TK_ID { $$ = mnew(Var); $$->u.id = $1; $$->tag = VarId; $$->line = -1; }
    | expothers '[' exp ']' {$$ = mnew(Var); $$->tag = VarIndexed; $$->u.indexed.e1 = $1; $$->u.indexed.e2 = $3; $$->line = $2; }
    ;

exp : expor { $$ = $1; }
    ;

expor : expor TK_OR expand { $$ = newBinExp(ExpOr, $1, $3, $2); }
      | expand { $$ = $1; }
      ;

expand : expand TK_AND expcomp { $$ = newBinExp(ExpGreater, $1, $3, $2); }
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

expunary : '-' expothers { $$ = mnew(Exp); $$->tag = ExpMinus; $$->u.un = $2; }
         | '!' expothers { $$ = mnew(Exp); $$->tag = ExpNot; $$->u.un = $2; }
         | expothers { $$ = $1; }
         ; 

expothers : numeral { $$ = $1; }
       | TK_STRING { $$ = mnew(Exp); $$->tag = ExpString;  $$->u.s = $1; $$->line = -1; }
       | var { $$ = mnew(Exp); $$->tag = ExpVar;  $$->u.var = $1; $$->line = -1; }
       | call { $$ = mnew(Exp); $$->tag = ExpCall; $$->u.call = $1; $$->line = -1; }
       | '(' exp ')' { $$ = $2; }
       | TK_NEW type '[' exp ']' { $$ = mnew(Exp); $$->tag = ExpNew; $$->u.newexp.type = $2; $$->line = $3; $$->u.newexp.exp = $4;  }
       ;

explist : exp ',' explist { $$ = mnew(ExpList); $$->exp = $1; $$->next = $3; }
        | exp { $$ = mnew(ExpList); $$->exp = $1; $$->next = NULL; }
        ;

call : TK_ID '(' explist ')' {$$ = mnew(CmdCall); $$->id = $1; $$->parameters = $3;}
     | TK_ID '(' ')' {$$ = mnew(CmdCall); $$->id = $1; $$->parameters = NULL;}
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
