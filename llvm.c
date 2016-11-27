#include "llvm.h"
#include "ast.h"

void genIdent(int level, FILE *fp);
void genLine(char * type, int line, int newLineAtEnd, FILE *fp);
void genType(Type *type, FILE *fp);
void genBinExpType(ExpE type, int nIdent, FILE *fp);
int genExp(Exp * exp, int nIdent, FILE *fp);
void genVar(Var * var, int nIdent, FILE *fp);
void genCmdCall (CmdCall * cmd, int nIdent, FILE *fp);
void genCmdBasic(CmdBasic * cmd, int nIdent, FILE *fp);
void genExpList(ExpList * list, int nIdent, FILE *fp);
void genDefVarList(DefVarList * list, int nIdent, FILE *fp);
void genCmdList(CmdList * list, int nIdent, FILE *fp);
void genParamList(ParamList * paramlist, int nIdent, FILE *fp);
void genBlock(Block * block, int nIdent, FILE *fp);
void genCmd(Cmd * cmd, int nIdent, FILE *fp);
void genParam(Param * param, int nIdent, FILE *fp);
void genDefFunc(Func * deffunc, int nIdent, FILE *fp);
void genDefVar(DefVar * defvar, int nIdent, FILE *fp);
void genDefinition(Definition *definition, int nIdent, FILE *fp);

static int curTempVar = 0;

int getNextTempVar()
{
    return ++curTempVar;
}

void createLLVM(DefinitionList *tree, FILE *fp)
{
    if(tree == NULL)
    {
        printf("FCLOSED");
        fclose(fp);
        return;
    }

    genDefinition(tree->definition, 0, fp);
    
    createLLVM(tree->next, fp);
}

void genDefinition(Definition *definition, int nIdent, FILE *fp)
{
    fprintf(fp, ";TODO: Gen definition\n");

    if(definition->type == TypeDefVar)
    {
        genDefVarList(definition->u.defvarlist, nIdent+1, fp);
    }
    else if(definition->type == TypeDefFunc)
    {
        genDefFunc(definition->u.deffunc, nIdent+1, fp);
    }
    else
    {
        printf("Error - Invalid definition type. Exiting.\n");
        fclose(fp);
        exit(-1);
    }
}

void genDefVar(DefVar * defvar, int nIdent, FILE * fp)
{
    genIdent(nIdent, fp);
    fprintf(fp, "@%s = common global ", defvar->id);

    genType(defvar->type, fp);
    fprintf(fp, " 0\n");
}

void genDefFunc(Func * deffunc, int nIdent, FILE * fp)
{
    genIdent(nIdent, fp);
    fprintf(fp, "define ");

    genType(deffunc->type, fp);

    fprintf(fp, " @%s(", deffunc->id);

    genParamList(deffunc->params, nIdent + 1, fp);

    fprintf(fp, ") #0 ");

    genBlock(deffunc->block, nIdent, fp);

}

void genParam(Param * param, int nIdent, FILE * fp)
{
    genIdent(nIdent, fp);
    fprintf(fp, "Parameter: %s\n", param->id);

    genType(param->type, fp);
}

void genIdent(int level, FILE *fp){
    int i;
    for(i = 0; i < level; i++) {
        fprintf(fp, "  ");
    }
}

void genLine(char * type, int line, int newLineAtEnd, FILE *fp){
}

void genType(Type *type, FILE *fp) {
    switch(type->name){
        case VarFloat:
            break;
        case VarInt:
            fprintf(fp,"i32");
            break;
        case VarChar:
            break;
    }
}

void genParamList(ParamList * paramlist, int nIdent, FILE *fp){
}

void genCmdList(CmdList *list, int nIdent, FILE *fp)
{
    CmdList * current;

    if(list == NULL)
    {
        return;
    }

    for(current = list; current != NULL; current = current->next)
    {
        genCmd(current->cmd, nIdent, fp);
    }
}

void genBlock(Block * block, int nIdent, FILE *fp){
    fprintf(fp, "{\n");

    genDefVarList(block->vars, nIdent+1, fp);
    genCmdList(block->cmds, nIdent+1, fp);

    genIdent(nIdent, fp);
    fprintf(fp, "}\n");
}

void genDefVarList(DefVarList * list, int nIdent, FILE *fp)
{
    DefVarList * current;
    
    if(list == NULL)
    {
        return;
    }

    for(current = list; current != NULL; current = current->next)
    {
        genDefVar(current->defvar, nIdent+1, fp);
    }
}

void genCmd(Cmd *cmd, int nIdent, FILE *fp) {
    genExp(cmd->e, nIdent, fp);

    switch(cmd->type){
        case CmdWhile:
            //genCmd(cmd->u.cmd, nIdent);
            break;
        case CmdIf:
            //printf("If\n");
            //genCmd(cmd->u.cmd, nIdent);
            break;
        case CmdIfElse:
            //printf("If and Else\n");
            //genCmd(cmd->u.cmds.c1, nIdent);
            //genCmd(cmd->u.cmds.c2, nIdent);
            break;
        case CmdBasicE:
            genCmdBasic(cmd->u.cmdBasic, nIdent, fp);
            break;
        default:
            printf("Invalid command type. Exiting.\n");
            exit(-2);
    }
}

void genBinExpType(ExpE type, int nIdent, FILE *fp) {

}

int genExp(Exp *exp, int nIdent, FILE *fp) {
    if(exp == NULL)
    {
        return -1;
    }

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
            //printBinExpType(exp->tag, nIdent);
            //printIdent(nIdent);
            //printf("Expression resulting ");
            //printType(exp->type, 0);
            //printExp(exp->u.bin.e1, nIdent);
            //printExp(exp->u.bin.e2, nIdent);
            break;
        case ExpVar:
            //printIdent(nIdent);
            //printf("Expression type: Variable\n");
            //printIdent(nIdent);
            //printf("Expression resulting ");
            //printType(exp->type, 0);
            //printVar(exp->u.var, nIdent+1);
            break;
        case ExpCall:
            //printIdent(nIdent);
            //printf("Expression type: Function Call\n");
            //printIdent(nIdent);
            //printf("Expression resulting ");
            //printType(exp->type, 0);
            //printCmdCall(exp->u.call, nIdent+1);
            break;
        case ExpNot:
            //printIdent(nIdent);
            //printf("Expression type: Negation\n");
            //printIdent(nIdent);
            //printf("Expression resulting ");
            //printType(exp->type, 0);
            //printExp(exp->u.un, nIdent);
            break;
        case ExpMinus:
            //printIdent(nIdent);
            //printf("Expression type: Negative\n");
            //printIdent(nIdent);
            //printf("Expression resulting ");
            //printType(exp->type, 0);
            //printExp(exp->u.un, nIdent);
            break;
        case ExpNew:
//            printIdent(nIdent);
//            printf("Expression type: New\n");
//            printType(exp->u.newexp.type, nIdent);
//            printIdent(nIdent);
//            printf("Expression resulting ");
//            printType(exp->type, 0);
//            printExp(exp->u.newexp.exp, nIdent);
            break;
        case ExpString:
//            printIdent(nIdent);
//            printf("Expression type: String\n");
//            printIdent(nIdent);
//            printf("Expression resulting ");
//            printType(exp->type, 0);
//            printIdent(nIdent);
//            printf("%s\n", exp->u.c);
            break;
        case ExpInt: {
            int temp = getNextTempVar(), ret = getNextTempVar();
            genIdent(nIdent, fp);
            fprintf(fp, "%%t%d = alloca i32\n", temp);
            genIdent(nIdent, fp);
            fprintf(fp, "store i32 %d, i32* %%t%d\n", exp->u.l, temp);
            genIdent(nIdent, fp);
            fprintf(fp, "%%t%d = load i32* %%t%d\n", ret, temp);
            return ret;
        }
        case ExpFloat:
//            printIdent(nIdent);
//            printf("Expression type: Float\n");
//            printIdent(nIdent);
//            printf("Expression resulting ");
//            printType(exp->type, 0);
//            printIdent(nIdent);
//            printf("%f\n", exp->u.d);
            break;
        case ExpCastIntToFloat:
//            printIdent(nIdent);
//            printf("Expression type: Cast from int to float\n");
//            printExp(exp->u.un, nIdent);
            break;
        default:
            printf("Invalid expression type %d. Exiting\n", exp->tag);
            exit(-5);
    }

    return -1;
}

void genVar(Var *var, int nIdent, FILE *fp) {

}

void genCmdCall(CmdCall *cmd, int nIdent, FILE *fp) {

}

void genExpList(ExpList *list, int nIdent, FILE *fp) {

}

void genCmdBasic(CmdBasic *cmd, int nIdent, FILE *fp) {
    switch(cmd->type){
        case CmdBasicReturn: {
            int temp = genExp(cmd->u.returnExp, nIdent, fp);
            genIdent(nIdent, fp);
            fprintf(fp, "ret ");
            genType(cmd->u.returnExp->type, fp);
            fprintf(fp, " %%t%d\n", temp);
            break;
        }
        case CmdBasicCall:
            //printf("Function call\n");
            //genCmdCall(cmd->u.call, nIdent, fp);
            break;
        case CmdBasicBlock:
            //genBlock(cmd->u.block, nIdent, fp);
            break;
        case CmdBasicVar:
            //printf("Variable Assignment\n");
            //genVar(cmd->u.varCmd.var, nIdent, fp);
            //genExp(cmd->u.varCmd.exp, nIdent, fp);
            break;
        default:
            printf("Invalid command type. Exiting.\n");
            exit(-3);
    }
}

