#include "ast.h"

typedef struct symbolTable SymbolTable;
typedef struct decList DecList;

struct decList 
{
    DecList *next;

    union 
    {
        DefVar *v;
        Param *p;
        Func *f;
    } val;

    char type; // v (dec-var) or p (param) or f (dec-function) or n (none/null)
};

// Creates a symbol table
SymbolTable *create_symbolTable(void);

// Adds a dec-var symbol to the current scope
void addDecVar(SymbolTable *p, DefVar *v);

// Adds a param symbol to the current scope
void addParam(SymbolTable *p, Param *param);

// Adds a dec-function symbol to the current scope
void addDecFunc(SymbolTable *p, Func *f);

// Searches for an identifier on the symbol table
DecList *find(SymbolTable *p, const char *id);

// Creates a new scope
void enterScope(SymbolTable **p);

// Deletes current scope
void leaveScope (SymbolTable **p);

// Checks if the symbol table is empty
int symbolTable_isEmpty (SymbolTable *p);

// Frees the symbol table
void free_symbolTable (SymbolTable *p);

// Prints the symbol table
void printST(SymbolTable *p);
