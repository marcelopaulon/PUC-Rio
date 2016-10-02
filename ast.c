#include "ast.h"

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

void printDefFunc(Func * deffunc)
{
    printf("Def func!\n");
}

void printDefVar(DefVar * defvar)
{
    printf("Def var!\n");
}

void printDefinition(Definition *definition)
{
    if(definition->type == TypeDefVar)
    {
        printDefVar(definition->u.defvar);
    }
    else if(definition->type == TypeDefFunc)
    {
        printDefFunc(definition->u.deffunc);
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

    printDefinition(tree->definition);

    printAST(tree->next);
}
