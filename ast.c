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

CmdBasic *cmdBasicInit(Var *var, Exp *exp, int tkNumber)
{
    CmdBasic *cmd = mnew(CmdBasic);
    cmd->var = var;
    cmd->exp = exp;
    cmd->tkNumber = tkNumber;
    return cmd;
}

