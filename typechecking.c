#include <stdio.h>
#include <stdlib.h>

#include "typechecking.h"

static SymbolTable *table;

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

void checkBlock(Block *block)
{
    table = enterScope(table);
    //TODO
    leaveScope(&table);
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

void checkDefFunc(Func *deffunc)
{
    checkSymbolRedefinition(deffunc->id);

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
