#include "ast.h"

typedef struct symbolTable SymbolTable;
typedef struct decList DecList;

struct decList 
{
    char type; // v (dec-var) or f (dec-function) or n (none/null)

    DecList *next;

    union 
    {
        DefVar *v;
        Func *f;
    } val;

};

// Creates a symbol table
SymbolTable *create_symbolTable(void);

// Adds a dec-var symbol to the current scope
void addDecVar(SymbolTable *p, DefVar *v);

// Adds a dec-function symbol to the current scope
void addDecFunc(SymbolTable *p, Func *f);

// Searches for an identifier on the symbol table
DecList *find(SymbolTable *p, char *id);

// Creates a new scope
SymbolTable *enterScope(SymbolTable *p);

// Deletes current scope
void leaveScope (SymbolTable **p);

// Checks if the symbol table is empty
int symbolTable_isEmpty (SymbolTable *p);

// Frees the symbol table
void free_symbolTable (SymbolTable *p);
