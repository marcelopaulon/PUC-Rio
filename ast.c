#include "ast.h"

void printIdent(int level);
void printType(Type * type, int nIdent);
void printList(List * paramlist, int nIdent);
void printDefVarList(DefVarList * list, int nIdent);
void printCmdList(CmdList * list, int nIdent);
void printParamList(ParamList * paramlist, int nIdent);
void printBlock(Block * block, int nIdent);
void printCmd(Cmd * cmd, int nIdent);
void printParam(Param * param, int nIdent);
void printDefFunc(Func * deffunc, int nIdent);
void printDefVar(DefVar * defvar, int nIdent);
void printDefinition(Definition *definition, int nIdent);

void *checkedMalloc(int size)
{
    void *data = malloc(size);
    if(data == NULL) 
    {
       printf("Memory allocation error");
       exit(-1);
    }

    return data;
}

Exp *newBinExp(ExpE expTag, Exp* e1, Exp* e2, int line){
    Exp* exp = mnew(Exp);
    exp->tag = expTag;
    exp->u.bin.e1 = e1;
    exp->u.bin.e2 = e2;
    exp->line = line;
    return exp;
}

Type *baseTypeInit(VarType type)
{
    Type *base = mnew(Type); 
    base->name = type; 
    base->brackets = 0;
    return base;
}

CmdBasic *cmdBasicVarInit(Var *var, Exp *exp, int line)
{
    CmdBasic *cmd = mnew(CmdBasic);
    cmd->type = CmdBasicVar;
    cmd->u.varCmd.var = var;
    cmd->u.varCmd.exp = exp;
    cmd->line = line;
    return cmd;
}

CmdBasic *cmdBasicReturnInit(Exp *exp, int line)
{
    CmdBasic *cmd = mnew(CmdBasic);
    cmd->type = CmdBasicReturn;
    cmd->u.returnExp = exp;
    cmd->line = line;
    return cmd;
}

CmdBasic *cmdBasicCallInit(CmdCall *call, int line)
{
    CmdBasic *cmd = mnew(CmdBasic);
    cmd->type = CmdBasicCall;
    cmd->u.call = call;
    cmd->line = line;
    return cmd;
}

void printIdent(int level){
    int i;
    for(i=0;i<level;i++) printf("\t");
}

void printType(Type * type, int nIdent)
{
    printIdent(nIdent);
    printf("Type!\n");
}

void printList(List * paramlist, int nIdent)
{
    printIdent(nIdent);
    printf("List!\n");
}

void printDefVarList(DefVarList * list, int nIdent)
{
    printIdent(nIdent);
    printf("Def Var List!\n");
}

void printCmdList(CmdList * list, int nIdent)
{
    CmdList * current;

    printIdent(nIdent);
    printf("Command List:\n");

    if(list == NULL)
    {
        return;
    }

    for(current = list; current->next != NULL; current = current->next)
    {
        printCmd(current->cmd, nIdent+1);
    }
}

void printParamList(ParamList * list, int nIdent)
{
    ParamList * current;

    printIdent(nIdent);
    printf("Parameters List:\n");

    if(list == NULL)
    {
        return;
    }

    for(current = list; current->next != NULL; current = current->next)
    {
        printParam(current->param, nIdent+1);
    }
}

void printBlock(Block * block, int nIdent)
{
    printIdent(nIdent);
    printf("Block:\n");

    printDefVarList(block->vars,nIdent+1);
    printCmdList(block->cmds,nIdent+1);
}

void printCmd(Cmd * cmd, int nIdent)
{
    printIdent(nIdent);
    printf("Command!\n");

    /*
    CmdE type;
    Exp *e;
    union{
        Cmd *cmd;
        struct{
            Cmd *c1;
            Cmd *c2;
        } cmds;
        CmdBasic *cmdBasic;
        CmdCall *call;
        CmdList *cmdList;
    } u;
    int line;
    */

    

    /*
        enum CmdE{
            CmdWhile,
            CmdIf,
            CmdArray,
            CmdBasicE
        };
    */
}

void printParam(Param * param, int nIdent)
{
    printIdent(nIdent);
    printf("Parameter: %s\n", param->id);

    printType(param->type, nIdent+1);
}

void printDefFunc(Func * deffunc, int nIdent)
{
    printIdent(nIdent);
    printf("Func: %s\n", deffunc->id);

    printType(deffunc->type, nIdent + 1);
    printParamList(deffunc->params, nIdent + 1);
    printBlock(deffunc->block, nIdent + 1);
}

void printDefVar(DefVar * defvar, int nIdent)
{
    printIdent(nIdent);
    printf("DefVar:\n");

    printType(defvar->type, nIdent + 1);
    printList(defvar->nameslist, nIdent + 1);
}

void printDefinition(Definition *definition, int nIdent)
{
    printIdent(nIdent);
    printf("Definition:\n");

    if(definition->type == TypeDefVar)
    {
        printDefVar(definition->u.defvar, nIdent+1);
    }
    else if(definition->type == TypeDefFunc)
    {
        printDefFunc(definition->u.deffunc, nIdent+1);
    }
    else
    {
        printf("Error - Invalid definition type. Exiting.\n");
        exit(-1);
    }
}

void printAST(DefinitionList *tree)
{
    if(tree == NULL)
    {
        return;
    }

    printDefinition(tree->definition, 0);

    printAST(tree->next);
}
