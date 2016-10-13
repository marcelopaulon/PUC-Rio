#include "ast.h"

void printIdent(int level);
void printType(Type * type, int nIdent);
void printExp(Exp * exp, int nIdent);
void printVar(Var * var, int nIdent);
void printCmdCall (CmdCall * cmd, int nIdent);
void printCmdBasic(CmdBasic * cmd, int nIdent);
void printList(List * list, int nIdent);
void printExpList(ExpList * list, int nIdent);
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
    int i;

    printIdent(nIdent);

    if(type == NULL)
    {
        return;
    }
    
    printf("Type at line %d: ", type->line); 

    switch(type->name){
        case VarFloat:
            printf("float");
            break;
        case VarInt:
            printf("int");
            break;
        case VarChar:
            printf("char");
            break;
        default:
            printf("Invalid type. Exiting.\n");
            exit(-5);
    }

    for(i=0;i<type->brackets;i++) printf("[]");
    printf("\n");
}

void printExp(Exp * exp, int nIdent)
{
    printIdent(nIdent);
    printf("Expression!\n");
}

void printVar(Var * var, int nIdent)
{
    printIdent(nIdent);
    printf("Variable at line %d: ", var->line);
    switch(var->tag){
        case VarId:
            printf("ID\n");
            printIdent(nIdent);
            if(var->u.id != NULL) printf("%s\n", var->u.id);
            else printf("(null)\n");
            break;
        case VarIndexed:
            printf("Indexed\n");
            printExp(var->u.indexed.e1, nIdent + 1);
            printExp(var->u.indexed.e2, nIdent + 1);
            break;
        default:
            printf("Invalid variable tag type. Exiting.\n");
            exit(-4);
    }  
    
    printType(&(var->type), nIdent+1);
}

void printCmdCall (CmdCall * cmd, int nIdent)
{
    printIdent(nIdent);
    printf("Command Call: %s\n", cmd->id);

    printExpList(cmd->parameters, nIdent+1);
}

void printCmdBasic(CmdBasic * cmd, int nIdent)
{
    printIdent(nIdent);
    printf("Basic Command at line %d\n", cmd->line);

    printIdent(nIdent+1);
    printf("Command type: ");
    switch(cmd->type){
        case CmdBasicReturn:
            printf("Return\n");
            printExp(cmd->u.returnExp, nIdent + 1);
            break;
        case CmdBasicCall:
            printf("Function call\n");
            printCmdCall(cmd->u.call, nIdent + 1);
            break;
        case CmdBasicVar:
            printf("Variable Assignment\n");
            printVar(cmd->u.varCmd.var, nIdent+1);
            printExp(cmd->u.varCmd.exp, nIdent+1);
            break;
        default:
            printf("Invalid command type. Exiting.\n");
            exit(-3);
    }
}

void printList(List * list, int nIdent)
{
    List * current;

    printIdent(nIdent);
    printf("List:\n");

    if(list == NULL)
    {
        return;
    }

    for(current = list; current->next != NULL; current = current->next)
    {
            printIdent(nIdent);

            if(current->id != NULL) printf("%s\n", current->id);
            else printf("(null)\n");
    }
}

void printExpList(ExpList * list, int nIdent)
{
    ExpList * current;

    printIdent(nIdent);
    printf("Expression List:\n");

    if(list == NULL)
    {
        return;
    }

    for(current = list; current->next != NULL; current = current->next)
    {
        printExp(current->exp, nIdent+1);
    }
}

void printDefVarList(DefVarList * list, int nIdent)
{
    DefVarList * current;

    printIdent(nIdent);
    printf("Def Var List:\n");

    if(list == NULL)
    {
        return;
    }

    for(current = list; current->next != NULL; current = current->next)
    {
        printDefVar(current->defvar, nIdent+1);
    }
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
    printf("Command at line %d\n", cmd->line);
    
    printExp(cmd->e, nIdent+1);

    printIdent(nIdent+1);
    printf("Command type: ");
    switch(cmd->type){
        case CmdWhile:
            printf("While\n");
            printCmd(cmd->u.cmd, nIdent+1);
            break;
        case CmdIf:
            printf("If\n");
            printCmd(cmd->u.cmd, nIdent+1);
            break;
        case CmdIfElse:
            printf("If and Else\n");
            printCmd(cmd->u.cmds.c1, nIdent+1);
            printCmd(cmd->u.cmds.c2, nIdent+1);
            break;
        case CmdBasicE:
            printf("Basic Command\n");
            printCmdBasic(cmd->u.cmdBasic, nIdent+1);
            break;
        default:
            printf("Invalid command type. Exiting.\n");
            exit(-2);
    }
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
