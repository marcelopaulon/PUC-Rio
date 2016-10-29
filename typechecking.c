#include <stdio.h>
#include <stdlib.h>

#include "typechecking.h"

static SymbolTable *table;

static char *curFunction = NULL;
static Type *curReturnType = NULL;

void checkBlock(Block *block);

int typeEquals(Type *t1, Type *t2)
{
    if(t1->name != t2->name) return 0;
    if(t1->brackets != t2->brackets) return 0;
    return 1;
}

void checkSymbolRedefinition(char *id)
{
    if(find(table, id) != NULL)
    {
        printf("Symbol %s has already been defined in this scope. Exiting.\n", id);
        exit(-1);
    }
}

void checkParamList(ParamList * list)
{
    ParamList * current;
    
    if(list == NULL)
    {
        return;
    }

    for(current = list; current != NULL; current = current->next)
    {
        checkSymbolRedefinition(current->param->id);
        addParam(table, current->param);
    }
}

void checkDefVarList(DefVarList *defvarlist)
{
    DefVarList * current;

    if(defvarlist == NULL)
    {
        return;
    }

    for(current = defvarlist; current != NULL; current = current->next)
    {
        checkSymbolRedefinition(current->defvar->id);
        addDecVar(table, current->defvar);
    }
}

void checkExp(Exp *exp)
{

}

void checkExpList(ExpList *expList)
{
    ExpList * current;

    if(expList == NULL)
    {
        return;
    }

    for(current = expList; current != NULL; current = current->next)
    {
        checkExp(current->exp);
    }
}

void checkCmdCall(CmdCall *cmd)
{
    DecList *temp = find(table, cmd->id);
    Func *f;

    ExpList * l1;
    ParamList * l2;
    
    if(temp == NULL)
    {
        printf("Undefined symbol %s called as function. Exiting.\n", cmd->id);
        exit(-1);
    }

    if(temp->type != 'f')
    {  
        printf("Attempted to call non-function symbol %s. Exiting.\n", cmd->id);
        exit(-1);
    }

    f = temp->val.f;
    cmd->type = f->type;
    checkExpList(cmd->parameters);
    
    l1 = cmd->parameters;
    l2 = f->params;
    
    while(l1 != NULL) {
        if(!typeEquals(l1->exp->type, l2->param->type))
        {
            printf("Incompatible call signature for function %s. Exiting.\n", cmd->id);
            exit(-1);
        }

        l1 = l1->next;  
        l2 = l2->next;
    }
    
    if(l1 != NULL || l2 != NULL)
    {
        printf("Incompatible call signature for function %s. Exiting.\n", cmd->id);
        exit(-1);
    }
}

void checkCmdBasic(CmdBasic *cmd)
{
    switch(cmd->type) {
        case CmdBasicReturn:
            checkExp(cmd->u.returnExp);

            if(!typeEquals(cmd->u.returnExp->type, curReturnType))
            {
                printf("Function %s - invalid return type on line XXX. Exiting.", curFunction);
                exit(-1);
            }

            break;
        case CmdBasicCall:
            checkCmdCall(cmd->u.call);
            break;
        case CmdBasicBlock:
            checkBlock(cmd->u.block);
            break;
        case CmdBasicVar:
            //printf("Variable Assignment\n");
            //printVar(cmd->u.varCmd.var, nIdent+1);
            //printExp(cmd->u.varCmd.exp, nIdent+1);
            break;
        default:
            printf("Invalid command type. Exiting.\n");
            exit(-3);
    }
}

void checkCmd(Cmd *cmd)
{
    checkExp(cmd->e);

    switch(cmd->type){
        case CmdWhile:
            //printf("While\n");
            //printCmd(cmd->u.cmd, nIdent+1);
            break;
        case CmdIf:
            //printf("If\n");
            //printCmd(cmd->u.cmd, nIdent+1);
            break;
        case CmdIfElse:
            //printf("If and Else\n");
            //printCmd(cmd->u.cmds.c1, nIdent+1);
            //printCmd(cmd->u.cmds.c2, nIdent+1);
            break;
        case CmdBasicE:
            checkCmdBasic(cmd->u.cmdBasic);
            break;
        default:
            printf("Invalid command type. Exiting.\n");
            exit(-2);
    }
}

void checkCmdList(CmdList *cmdList)
{
    CmdList * current;

    if(cmdList == NULL)
    {
        return;
    }

    for(current = cmdList; current != NULL; current = current->next)
    {
        checkCmd(current->cmd);
    }
}

void checkBlock(Block *block)
{
    table = enterScope(table);
    checkDefVarList(block->vars);
    checkCmdList(block->cmds);
    leaveScope(&table);
}

void checkDefFunc(Func *deffunc)
{
    checkSymbolRedefinition(deffunc->id);

    curFunction = deffunc->id;
    curReturnType = deffunc->type;
    addDecFunc(table, deffunc);
    
    table = enterScope(table);

    checkParamList(deffunc->params);
    checkBlock(deffunc->block);

    leaveScope(&table);
}

void checkDefinition(Definition *definition)
{
    if(definition->type == TypeDefVar)
    {
        checkDefVarList(definition->u.defvarlist);
    }
    else if(definition->type == TypeDefFunc)
    {
        checkDefFunc(definition->u.deffunc);
    }
    else
    {
        printf("Error - Invalid definition type. Exiting.\n");
        exit(-1);
    }
}

void typeCheck(DefinitionList *tree)
{
    if(tree == NULL)
    {
        return;
    }

    table = create_symbolTable();

    checkDefinition(tree->definition);

    typeCheck(tree->next);
}
