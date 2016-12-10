#include "ast.h"
#define FALSE 0
#define TRUE 1

static void printIdent(int level);
static void printLine(char * type, int line, int newLineAtEnd);
static void printType(Type * type, int nIdent);
static void printBinExpType(ExpE type, int nIdent);
static void printExp(Exp * exp, int nIdent);
static void printVar(Var * var, int nIdent);
static void printCmdCall (CmdCall * cmd, int nIdent);
static void printCmdBasic(CmdBasic * cmd, int nIdent);
static void printExpList(ExpList * list, int nIdent);
static void printDefVarList(DefVarList * list, int nIdent);
static void printCmdList(CmdList * list, int nIdent);
static void printParamList(ParamList * paramlist, int nIdent);
static void printBlock(Block * block, int nIdent);
static void printCmd(Cmd * cmd, int nIdent);
static void printParam(Param * param, int nIdent);
static void printDefFunc(Func * deffunc, int nIdent);
static void printDefVar(DefVar * defvar, int nIdent);
static void printDefinition(Definition *definition, int nIdent);

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
    exp->type = NULL;
    exp->tag = expTag;
    exp->u.bin.e1 = e1;
    exp->u.bin.e2 = e2;
    exp->line = line;
    return exp;
}

Exp *castIntToFloat(Exp *e)
{
    Exp* exp = mnew(Exp);

    if(e->type->name != VarInt || e->type->brackets > 0)
    {
        printf("Invalid cast to float. Exiting.\n");
        exit(-1);
    }

    exp->type = baseTypeInit(VarFloat);
    exp->tag = ExpCastIntToFloat;
    exp->u.un = e;
    return exp;
}

Type *baseTypeInit(VarType type)
{
    Type *base = mnew(Type); 
    base->name = type; 
    base->brackets = 0;
    base->line = -1;
    return base;
}

CmdBasic *cmdBasicVarInit(Var *var, Exp *exp, int line)
{
    CmdBasic *cmd = mnew(CmdBasic);
    cmd->type = CmdBasicVar;

    if(exp != NULL)
    {
        exp->line = line;
    }

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

CmdBasic *cmdBasicBlockInit(Block *block)
{
    CmdBasic *cmd = mnew(CmdBasic);
    cmd->type = CmdBasicBlock;
    cmd->u.block = block;
    cmd->line = -1;
    return cmd;
}

static void printIdent(int level){
    int i;
    for(i=0;i<level;i++) printf("  ");
}

static void printLine(char * type, int line, int newLineAtEnd){
    printf("%s", type);
    if(line > 0) printf(" at line %d", line);
    if(newLineAtEnd) printf("\n");
    else printf(": ");
}

static void printType(Type * type, int nIdent)
{
    int i;

    printIdent(nIdent);

    if(type == NULL)
    {
        printf("Type: void\n");
        return;
    }
    
    printLine("Type", type->line, FALSE); 

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

static void printBinExpType(ExpE type, int nIdent)
{
    printIdent(nIdent);
    printf("Expression type: ");

    switch(type){
        case ExpAdd: printf("Addition"); break;
        case ExpSub: printf("Subtraction"); break;
        case ExpMul: printf("Multiplication"); break;
        case ExpDiv: printf("Division"); break;
        case ExpEqual: printf("Equality"); break;
        case ExpLess: printf("Comparison (Less Than)"); break;
        case ExpGreater: printf("Comparison (Greater Than)"); break;
        case ExpLessEqual: printf("Comparison (Less or Equal Than)"); break;
        case ExpGreaterEqual: printf("Comparison (Greater or Equal Than)"); break;
        case ExpOr: printf("Logical Disjunction"); break;
        case ExpAnd: printf("Logical Conjunction"); break;
        default: printf("Invalid type"); exit(-6); break;
    }
    printf("\n");
}

static void printExp(Exp * exp, int nIdent)
{
    if(exp == NULL) return;

    printIdent(nIdent);
    printLine("Expression", exp->line, TRUE);

    switch(exp->tag){
        case ExpAdd:
        case ExpSub:
        case ExpMul:
        case ExpDiv:
        case ExpEqual:
        case ExpLess:
        case ExpGreater:
        case ExpLessEqual:
        case ExpGreaterEqual:
        case ExpOr:
        case ExpAnd:
            printBinExpType(exp->tag, nIdent+1);
            printIdent(nIdent+1);
            printf("Expression resulting ");
            printType(exp->type, 0);
            printExp(exp->u.bin.e1, nIdent+1);
            printExp(exp->u.bin.e2, nIdent+1);
        	break;
        case ExpVar:
            printIdent(nIdent+1);
            printf("Expression type: Variable\n");
            printIdent(nIdent+1);
            printf("Expression resulting ");
            printType(exp->type, 0);
            printVar(exp->u.var, nIdent+1);
        	break;
        case ExpCall:
            printIdent(nIdent+1);
            printf("Expression type: Function Call\n");
            printIdent(nIdent+1);
            printf("Expression resulting ");
            printType(exp->type, 0);
            printCmdCall(exp->u.call, nIdent+1);
        	break;
        case ExpNot:
            printIdent(nIdent+1);
            printf("Expression type: Negation\n");
            printIdent(nIdent+1);
            printf("Expression resulting ");
            printType(exp->type, 0);
            printExp(exp->u.un, nIdent+1);
        	break;
        case ExpMinus:
            printIdent(nIdent+1);
            printf("Expression type: Negative\n");
            printIdent(nIdent+1);
            printf("Expression resulting ");
            printType(exp->type, 0);
            printExp(exp->u.un, nIdent+1);
        	break;
        case ExpNew:
            printIdent(nIdent+1);
            printf("Expression type: New\n");
            printType(exp->u.newexp.type, nIdent+1);
            printIdent(nIdent+1);
            printf("Expression resulting ");
            printType(exp->type, 0);
            printExp(exp->u.newexp.exp, nIdent+1);
        	break;
        case ExpString:
            printIdent(nIdent+1);
            printf("Expression type: String\n");
            printIdent(nIdent+1);
            printf("Expression resulting ");
            printType(exp->type, 0);
            printIdent(nIdent+1);
            printf("%s\n", exp->u.c);
        	break;
        case ExpInt:
            printIdent(nIdent+1);
            printf("Expression type: Int\n");
            printIdent(nIdent+1);
            printf("Expression resulting ");
            printType(exp->type, 0);
            printIdent(nIdent+1);
            printf("%d\n", exp->u.l);
        	break;
        case ExpFloat:
            printIdent(nIdent+1);
            printf("Expression type: Float\n");
            printIdent(nIdent+1);
            printf("Expression resulting ");
            printType(exp->type, 0);
            printIdent(nIdent+1);
            printf("%f\n", exp->u.d);
        	break;
        case ExpCastIntToFloat:
            printIdent(nIdent+1);
            printf("Expression type: Cast from int to float\n");
            printExp(exp->u.un, nIdent + 1);
            break;
        default:
            printf("Invalid expression type %d. Exiting\n", exp->tag);
            exit(-5);
    }
}

static void printVar(Var * var, int nIdent)
{
    printIdent(nIdent);
    printLine("Variable", var->line, FALSE);
    switch(var->tag){
        case VarId:
            printf("ID\n");
            printIdent(nIdent);
            if(var->u.def.tag.dec->id != NULL) printf("%s\n", var->u.def.tag.dec->id);
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
}

static void printCmdCall (CmdCall * cmd, int nIdent)
{
    printIdent(nIdent);
    printf("Command Call: %s\n", cmd->id);
    printType(cmd->type, nIdent+1);
    printExpList(cmd->parameters, nIdent+1);
}

static void printCmdBasic(CmdBasic * cmd, int nIdent)
{
    printIdent(nIdent);

    printLine("Basic Command", cmd->line, TRUE);

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
        case CmdBasicBlock:
            printf("Block\n");
            printBlock(cmd->u.block, nIdent + 1);
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

static void printExpList(ExpList * list, int nIdent)
{
    ExpList * current;

    printIdent(nIdent);
    printf("Expression List:\n");

    if(list == NULL)
    {
        return;
    }

    for(current = list; current != NULL; current = current->next)
    {
        printExp(current->exp, nIdent+1);
    }
}

static void printDefVarList(DefVarList * list, int nIdent)
{
    DefVarList * current;

    printIdent(nIdent);
    printf("Def Var List:\n");

    if(list == NULL)
    {
        return;
    }

    for(current = list; current != NULL; current = current->next)
    {
        printDefVar(current->defvar, nIdent+1);
    }
}

static void printCmdList(CmdList * list, int nIdent)
{
    CmdList * current;

    printIdent(nIdent);
    printf("Command List:\n");

    if(list == NULL)
    {
        return;
    }

    for(current = list; current != NULL; current = current->next)
    {
        printCmd(current->cmd, nIdent+1);
    }
}

static void printParamList(ParamList * list, int nIdent)
{
    ParamList * current;

    printIdent(nIdent);
    printf("Parameters List:\n");

    if(list == NULL)
    {
        return;
    }

    for(current = list; current != NULL; current = current->next)
    {
        printParam(current->param, nIdent+1);
    }
}

static void printBlock(Block * block, int nIdent)
{
    printIdent(nIdent);
    printf("Block:\n");

    printDefVarList(block->vars,nIdent+1);
    printCmdList(block->cmds,nIdent+1);
}

static void printCmd(Cmd * cmd, int nIdent)
{
    printIdent(nIdent);
    printLine("Command", cmd->line, TRUE);
    
    printExp(cmd->e, nIdent+1);

    printIdent(nIdent+1);
    printf("Command type: ");
    switch(cmd->tag){
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
        case CmdBasicCmd:
            printf("Basic Command\n");
            printCmdBasic(cmd->u.cmdBasic, nIdent+1);
            break;
        default:
            printf("Invalid command type. Exiting.\n");
            exit(-2);
    }
}

static void printParam(Param * param, int nIdent)
{
    printIdent(nIdent);
    printf("Parameter: %s\n", param->id);

    printType(param->type, nIdent+1);
}

static void printDefFunc(Func * deffunc, int nIdent)
{
    printIdent(nIdent);
    printf("Func: %s\n", deffunc->id);

    printType(deffunc->type, nIdent + 1);
    printParamList(deffunc->params, nIdent + 1);
    printBlock(deffunc->block, nIdent + 1);
}

static void printDefVar(DefVar * defvar, int nIdent)
{
    printIdent(nIdent);
    printf("DefVar:\n");

    printType(defvar->type, nIdent + 1);
    printIdent(nIdent + 1);
    printf("%s\n", defvar->id);
}

static void printDefinition(Definition *definition, int nIdent)
{
    printIdent(nIdent);
    printf("Definition:\n");

    if(definition->type == TypeDefVar)
    {
        printDefVarList(definition->u.defvarlist, nIdent+1);
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
