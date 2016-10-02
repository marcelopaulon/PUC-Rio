#ifndef _AST
#define _AST

#include <stdlib.h>
#include <stdio.h>

#define mnew(T) ((T*) checkedMalloc (sizeof(T)))

typedef struct Exp Exp;
typedef struct Type Type;
typedef enum CmdE CmdE;
typedef enum ExpE ExpE;
typedef struct ExpList ExpList;
typedef struct List List;
typedef struct CmdBasic CmdBasic;
typedef struct CmdCall CmdCall;

typedef enum VarE{
    VarId, 
    VarIndexed
} VarE;

typedef enum VarType{
    VarFloat,
    VarInt,
    VarChar
} VarType;

struct Type{
    VarType name;
    int brackets;
    int line;
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
    int line;
} Var;

enum CmdE{
    StatWhile,
    StatIf,
    StatArray
};

typedef struct Cmd{
} Cmd;

enum ExpE{
    ExpAdd,
    ExpSub,
    ExpMul,
    ExpDiv,
    ExpEqual,
    ExpLess,
    ExpGreater,
    ExpLessEqual,
    ExpGreaterEqual,
    ExpOr,
    ExpAnd,
    ExpVar,
    ExpCall,
    ExpNot,
    ExpMinus,
    ExpUn,
    ExpNew,
    ExpString,
    ExpInt,
    ExpFloat
};


struct Exp{
    ExpE tag;
    union{
        Exp *un;
        struct{
            Exp *e1, *e2;
        }bin;
        int i;
        double f;
        char *s;
        Var *var;
        struct{
            Type *type;
            Exp *exp;
        }newexp;
        CmdCall *call;
    } u;
    int line;
};

struct ExpList{
    Exp *exp;
    ExpList *next;
};

struct CmdBasic{
    Var *var;
    int tkNumber;
    Exp *exp;
};

struct CmdCall{
    char *id;
    ExpList *parameters;
};

struct List{
    char *id;
    struct List *next;
};

void *checkedMalloc(int size);
Exp *newBinExp(ExpE expType, Exp* e1, Exp* e2, int line);
Type *baseTypeInit(VarType type);
CmdBasic *cmdBasicInit(Var *var, Exp *exp, int tkNumber);

#endif
