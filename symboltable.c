#ifndef _MONGASYMBOLTABLE
#define _MONGASYMBOLTABLE

#include "symboltable.h"

#include <stdlib.h>
#include <string.h>

#include <stdio.h>

struct symbolTable
{
  DecList *current;
  SymbolTable *previous;
};

SymbolTable *create_symbolTable(void)
{
    SymbolTable *table = (SymbolTable *) malloc(sizeof(SymbolTable));
    
    if(table == NULL)
    {
        printf("Unable to allocate memory for table. Exiting.");
        exit(-1);
    }

    table->current = (DecList *) malloc(sizeof(DecList));
    
    if(table->current == NULL)
    {
        printf("Unable to allocate memory for scope. Exiting.");
        exit(-1);
    }

    table->current->type = 'n';
    table->current->next = NULL;

    table->previous = NULL;

    return table;
}

void addDecVar(SymbolTable *p, DefVar *v)
{
    DecList *temp = p->current;

    if(temp->type == 'n')
    {
        temp->type = 'v';
        temp->val.v = v;
    }
    else
    { 
        while(temp->next != NULL) 
        {
            temp = temp->next;
        }

        temp->next = (DecList *) malloc(sizeof(DecList));
        
        if(temp->next == NULL)
        {
            printf("Unable to allocate memory for declist. Exiting.");
            exit(-1);
        }

        temp->next->type = 'v';
        temp->next->val.v = v;
        temp->next->next = NULL;
    }
}

void addParam(SymbolTable *p, Param *param)
{
    DecList *temp = p->current;

    if(temp->type == 'n')
    {
        temp->type = 'p';
        temp->val.p = param;
    }
    else
    {
        while(temp->next != NULL) 
        {
            temp = temp->next;
        }
        temp->next = (DecList *) malloc(sizeof(DecList));
        
        if(temp->next == NULL)
        {
            printf("Unable to allocate memory for declist. Exiting.");
            exit(-1);
        }

        temp->next->type = 'p';
        temp->next->val.p = param;
        temp->next->next = NULL;
    }
}

void addDecFunc(SymbolTable *p, Func *f)
{
    DecList *temp = p->current;

    if(temp->type == 'n')
    {
        temp->type = 'f';
        temp->val.f = f;
    }
    else
    { 
        while(temp->next != NULL) 
        {
            temp = temp->next;
        }

        temp->next = (DecList *) malloc(sizeof(DecList));
        
        if(temp->next == NULL)
        {
            printf("Unable to allocate memory for declist. Exiting.");
            exit(-1);
        }

        temp->next->type = 'f';
        temp->next->val.f = f;
        temp->next->next = NULL;
    }
}

DecList *find(SymbolTable *p, const char *id)
{
    SymbolTable *temp = p;
    
    while(temp != NULL)
    {
        DecList *tempDec = temp->current;
        while(tempDec != NULL)
        {
            if(tempDec->type == 'n') break;
            if(tempDec->type == 'v' && strcmp(tempDec->val.v->id, id) == 0) return tempDec; 
            if(tempDec->type == 'p' && strcmp(tempDec->val.p->id, id) == 0) return tempDec; 
            if(tempDec->type == 'f' && strcmp(tempDec->val.f->id, id) == 0) return tempDec;
            tempDec = tempDec->next;
        }

        temp = temp->previous;
    }

    return NULL;
}

void printST(SymbolTable *p)
{
    SymbolTable *temp = p;

    printf("Symbol table:\n");

    while(temp != NULL)
    {
        DecList *tempDec = temp->current;
        printf("Scope:\n");
        while(tempDec != NULL)
        {
            if(tempDec->type == 'n') break;
            if(tempDec->type == 'v') printf("\tType: %d Name: %s\n", tempDec->type, tempDec->val.v->id); 
            if(tempDec->type == 'p') printf("\tType: %d Name: %s\n", tempDec->type, tempDec->val.p->id); 
            if(tempDec->type == 'f') printf("\tType: %d Name: %s\n", tempDec->type, tempDec->val.f->id);
            tempDec = tempDec->next;
        }

        temp = temp->previous;
    }

    printf("\n");
}

void enterScope(SymbolTable **p)
{
    SymbolTable *new = create_symbolTable();
    new->previous = *p;
    *p = new;    
}

void leaveScope (SymbolTable **p)
{
    SymbolTable *temp = (*p);
    DecList *tempDec = temp->current, *tempDec2;

    *p = temp->previous;
    
    while(tempDec != NULL)
    {
        tempDec2 = tempDec;
        tempDec = tempDec->next;
        free(tempDec2);
    }

    free(temp);
}

int symbolTable_isEmpty (SymbolTable *p)
{
    if(p->previous == NULL) return 0;
    if(p->current == NULL) return 1;
    return 0;
}

void free_symbolTable (SymbolTable *p)
{
    free(p);
}

#endif
