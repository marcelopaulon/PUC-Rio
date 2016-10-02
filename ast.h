#ifndef _AST
#define _AST

#include <stdlib.h>
#include <stdio.h>

#define mnew(T) ((T*) checkedMalloc (sizeof(T)))

typedef enum VarE{
    VarId, 
    VarIndexed
} VarE;

typedef enum VarType{
    VarFloat,
    VarInt,
    VarChar
} VarType;

typedef struct Type Type;
struct Type{
    VarType name;
    int brackets;
};

typedef struct Var{
    VarE tag;
    Type type;
    union {
        const char *id;
        struct{
            struct Exp *e1, *e2;
        } indexed;
    } u;
} Var;


typedef enum CmdE CmdE;
enum CmdE{
    StatWhile,
    StatIf,
    StatArray
};

typedef struct Cmd{
} Cmd;

typedef enum ExpE ExpE;
enum ExpE{
    ExpAdd,
    ExpSub,
    ExpMul,
    ExpComp,
    ExpOr,
    ExpAnd
};

typedef struct Exp Exp;
struct Exp{
    ExpE tag;
    union{
        struct{
            Exp *e1, *e2;
        }bin;
        int i;
        double f;
        Var *var;
    } u;
    int line;
};

typedef struct ExpList ExpList;
struct ExpList{
    Exp *exp;
    ExpList *next;
};

typedef struct CmdBasic CmdBasic;
struct CmdBasic{
    Var *var;
    int tkNumber;
    Exp *exp;
};

typedef struct CmdCall CmdCall;
struct CmdCall{
    char *id;
    ExpList parameters;
};

typedef struct List List;
struct List{
    char *id;
    struct List *next;
};

void *checkedMalloc(int size);
Exp *newBinExp(ExpE expType, Exp* e1, Exp* e2);

#endif
