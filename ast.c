#include "ast.h"

void printIdent(int level);
void printType(Type * type, int nIdent);
void printBinExpType(ExpE type, int nIdent);
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

void printBinExpType(ExpE type, int nIdent)
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

void printExp(Exp * exp, int nIdent)
{
    if(exp == NULL) return;

    printIdent(nIdent);
    printf("Expression at line %d:\n", exp->line);

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
            printExp(exp->u.bin.e1, nIdent+1);
            printExp(exp->u.bin.e2, nIdent+1);
        	break;
        case ExpVar:
            printIdent(nIdent+1);
            printf("Expression type: Variable\n");
            printVar(exp->u.var, nIdent+1);
        	break;
        case ExpCall:
            printIdent(nIdent+1);
            printf("Expression type: Function Call\n");
            printCmdCall(exp->u.call, nIdent+1);
        	break;
        case ExpNot:
            printIdent(nIdent+1);
            printf("Expression type: Negation\n");
            printExp(exp->u.un, nIdent+1);
        	break;
        case ExpMinus:
            printIdent(nIdent+1);
            printf("Expression type: Negative\n");
            printExp(exp->u.un, nIdent+1);
        	break;
        case ExpNew:
            printIdent(nIdent+1);
            printf("Expression type: New\n");
            printType(exp->u.newexp.type, nIdent+1);
            printExp(exp->u.newexp.exp, nIdent+1);
        	break;
        case ExpString:
            printIdent(nIdent+1);
            printf("Expression type: String\n");
            printIdent(nIdent+1);
            printf("%s\n", exp->u.c);
        	break;
        case ExpInt:
            printIdent(nIdent+1);
            printf("Expression type: Int\n");
            printIdent(nIdent+1);
            printf("%d\n", exp->u.l);
        	break;
        case ExpFloat:
            printIdent(nIdent+1);
            printf("Expression type: Float\n");
            printIdent(nIdent+1);
            printf("%f\n", exp->u.d);
        	break;
        default:
            printf("Invalid expression type. Exiting\n");
            exit(-5);
    }
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

    for(current = list; current != NULL; current = current->next)
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

    for(current = list; current != NULL; current = current->next)
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

    for(current = list; current != NULL; current = current->next)
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

    for(current = list; current != NULL; current = current->next)
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

    for(current = list; current != NULL; current = current->next)
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
