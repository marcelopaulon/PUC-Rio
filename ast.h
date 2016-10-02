#ifndef _AST
#define _AST

#include <stdlib.h>
#include <stdio.h>

#define mnew(T) ((T*) checkedMalloc (sizeof(T)))

typedef struct Exp Exp;
typedef struct Type Type;
typedef enum CmdE CmdE;
typedef enum ExpE ExpE;
typedef enum CmdBasicType CmdBasicType;
typedef enum DefinitionType DefinitionType;
typedef struct ExpList ExpList;
typedef struct CmdList CmdList;
typedef struct List List;
typedef struct DefVarList DefVarList;
typedef struct CmdBasic CmdBasic;
typedef struct CmdCall CmdCall;
typedef struct Cmd Cmd;
typedef struct DefVar DefVar;
typedef struct Param Param;
typedef struct ParamList ParamList;
typedef struct Block Block;
typedef struct Func Func;
typedef struct Definition Definition;
typedef struct DefinitionList DefinitionList;

enum DefinitionType {
    TypeDefVar,
    TypeDefFunc
};

struct Definition {
    DefinitionType type;
    union {
        DefVar *defvar;
        Func *deffunc;
    } u;
};

struct DefinitionList{
    Definition *definition;
    DefinitionList *next;
};

struct Func{
    Type *type;
    char *id;
    ParamList *params;
    Block *block;
};

struct Block{
    DefVarList *vars;
    CmdList *cmds;
};

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

struct ParamList{
    Param *param;
    ParamList *next;
};

struct Param{
    Type *type;
    char *id;
};

struct DefVarList{
    DefVar *defvar;
    DefVarList *next;
};

struct DefVar{
    Type *type;
    List *nameslist;
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
    CmdWhile,
    CmdIf,
    CmdArray,
    CmdBasicE
};

struct Cmd{
    CmdE type;
    Exp *e;
    union{
        Cmd *cmd;
        struct{
            Cmd *c1;
            Cmd *c2;
        } cmds;
        CmdBasic *cmdBasic;
        CmdCall *call;
        CmdList *cmdList;
    } u;
    int line;
};

enum CmdBasicType{
    CmdBasicReturn,
    CmdBasicCall,
    CmdBasicVar,
    CmdBasicBlock
};

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

struct CmdList{
    Cmd *cmd;
    CmdList *next;
};

struct CmdBasic{
    CmdBasicType type;
    union {
        struct{
            Var *var;
            Exp *exp;
        } varCmd;
        Exp *returnExp;
        CmdCall *call;
    } u;
    int line;
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

CmdBasic *cmdBasicVarInit(Var *var, Exp *exp, int line);
CmdBasic *cmdBasicReturnInit(Exp *exp, int line);
CmdBasic *cmdBasicCallInit(CmdCall *call, int line);

void printAST(DefinitionList *tree);

#endif
