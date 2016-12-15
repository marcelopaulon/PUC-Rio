#include <string.h>
#include <math.h>
#include <stdio.h>

#include "llvm.h"

#define llvmWrite(f_, ...) fprintf(fp,(f_),##__VA_ARGS__)

static void genIdent(int level);
static void genType(Type *type);
static void genWhile(Cmd *cmd, int nIdent);
static int genCond(Exp *e, int lt, int lf, int nIdent);
static int genExp(Exp * exp, int nIdent);
static void genVar(Var * var, int nIdent);
static int genCmdCall (CmdCall * cmd, int nIdent);
static void genCmdBasic(CmdBasic * cmd, int nIdent);
static void genDefVarList(DefVarList * list, int nIdent, int isGlobal);
static void genCmdList(CmdList * list, int nIdent);
static void genParamList(ParamList * paramlist, int nIdent);
static void genBlock(Block * block, int nIdent);
static void genCmd(Cmd * cmd, int nIdent);
static void genParam(Param * param, int nIdent);
static void genDefFunc(Func * deffunc, int nIdent);
static void genDefVar(DefVar * defvar, int nIdent, int isGlobal);
static void genDefinition(Definition *definition, int nIdent);

static int curTempVar = 0;
static int curTempLabel = 0;

static FILE *fp;

static void printTemp(int t)
{
    llvmWrite("%%t%d", t);
}

static void printLabel(int t)
{
    llvmWrite("%%l%d", t);
}

static int getNextTempVar()
{
    return ++curTempVar;
}

static int getNextTempLabel()
{
    return ++curTempLabel;
}

static void genLabel(int label){
    llvmWrite("\nbr label %%l%d\n", label);
    llvmWrite("\nl%d:\n", label);
}

void createLLVM(DefinitionList *tree, FILE *file)
{
    fp = file;

    if(tree == NULL)
    {
        printf("FCLOSED");
        fclose(fp);
        return;
    }

    genDefinition(tree->definition, 0);
    
    createLLVM(tree->next, fp);
}

static void genDefinition(Definition *definition, int nIdent)
{
    if(definition->type == TypeDefVar)
    {
        genDefVarList(definition->u.defvarlist, nIdent+1, 1);
    }
    else if(definition->type == TypeDefFunc)
    {
        genDefFunc(definition->u.deffunc, nIdent+1);
    }
    else
    {
        printf("Error - Invalid definition type. Exiting.\n");
        fclose(fp);
        exit(-1);
    }
}

static void genDefVar(DefVar * defvar, int nIdent, int isGlobal)
{
    genIdent(nIdent);

    defvar->isGlobal = isGlobal;

    defvar->varNumber = getNextTempVar();

    if(isGlobal != 0) {
        char *initValue;
        llvmWrite("@t%d = common global ", defvar->varNumber);
        genType(defvar->type);

        if(defvar->type->name == VarFloat)
        {
            initValue = " 0.0";
        }
        else
        {
            initValue = " 0";
        }

        llvmWrite(" %s\n", initValue);
    }
    else {
        printTemp(defvar->varNumber);
        llvmWrite(" = alloca ");
        genType(defvar->type);
        llvmWrite("\n");
    }
}

static void genDefFunc(Func * deffunc, int nIdent)
{
    genIdent(nIdent);
    llvmWrite("define ");

    genType(deffunc->type);

    llvmWrite(" @%s", deffunc->id);

    genParamList(deffunc->params, nIdent + 1);

    llvmWrite(" #0 ");

    llvmWrite("{\n");
    genBlock(deffunc->block, nIdent);
    llvmWrite("}\n");

}

static void genParam(Param * param, int nIdent)
{
    genType(param->type);
    llvmWrite(" ");
    param->varNumber = getNextTempVar();
    printTemp(param->varNumber);
}

static void genIdent(int level){
    int i;
    for(i = 0; i < level; i++) {
        llvmWrite("  ");
    }
}

static char *getType(Type *type)
{
    switch(type->name){
        case VarFloat:
            return "float";
        case VarInt:
            return "i32";
        case VarChar:
            return "i8";
    }

    return "Invalid type";
}

static void genType(Type *type) {
    llvmWrite("%s", getType(type));
}

static void genParamList(ParamList * paramlist, int nIdent){
    ParamList * current;
    llvmWrite("(");
    for(current = paramlist; current != NULL; current = current->next) {
        genParam(current->param, nIdent);
        if(current->next != NULL) llvmWrite(",");
    }
    llvmWrite(")");
}

static void genCmdList(CmdList *list, int nIdent)
{
    CmdList * current;

    if(list == NULL)
    {
        return;
    }

    for(current = list; current != NULL; current = current->next)
    {
        genCmd(current->cmd, nIdent);
    }
}

static void genBlock(Block * block, int nIdent){
    genDefVarList(block->vars, nIdent+1, 0);
    genCmdList(block->cmds, nIdent+1);

    genIdent(nIdent);
}

static void genDefVarList(DefVarList * list, int nIdent, int isGlobal)
{
    DefVarList * current;
    
    if(list == NULL)
    {
        return;
    }

    for(current = list; current != NULL; current = current->next)
    {
        genDefVar(current->defvar, nIdent+1, isGlobal);
    }
}

static void genCmd(Cmd *cmd, int nIdent) {
    switch(cmd->tag){
        case CmdWhile:
            genWhile(cmd, nIdent);
            break;
        case CmdIf: {
            int lf = getNextTempLabel();
            int lt = getNextTempLabel();

            genCond(cmd->e, lt, lf, nIdent);

            genLabel(lt);
            genCmd(cmd->u.cmd, nIdent);
            genLabel(lf);
            break;
        }
        case CmdIfElse: {
            int lt = getNextTempLabel();
            int lf = getNextTempLabel();
            int lAfterElse = getNextTempLabel();

            genCond(cmd->e, lt, lf, nIdent);

            genLabel(lt);
            genCmd(cmd->u.cmds.c1, nIdent);

            genIdent(nIdent);
            llvmWrite("br label %%l%d\n", lAfterElse);

            genLabel(lf);
            genCmd(cmd->u.cmds.c2, nIdent);

            genLabel(lAfterElse);

            break;
        }
        case CmdBasicCmd:
            genCmdBasic(cmd->u.cmdBasic, nIdent);
            break;
        default:
            printf("Invalid command type. Exiting.\n");
            exit(-2);
    }
}

static void genWhile(Cmd *cmd, int nIdent){
    int lWhile = getNextTempLabel();
    int lBreak = getNextTempLabel();

    genCond(cmd->e, lWhile, lBreak, nIdent);

    genLabel(lWhile);
    genCmd(cmd->u.cmd, nIdent+1);
    genCond(cmd->e, lWhile, lBreak, nIdent);

    genLabel(lBreak);
}

static int genCondComp(Exp *e, char* opcode, int lt, int lf, int nIdent) {
    int r1 = genExp(e->u.bin.e1,nIdent);
    int r2 = genExp(e->u.bin.e2,nIdent);
    int t = getNextTempVar();

    genIdent(nIdent);
    printTemp(t);
    llvmWrite(" = %ccmp %s ", (e->u.bin.e1->type->name == VarInt ? 'i' : 'f'), opcode);

    genType(e->u.bin.e1->type);

    llvmWrite(" ");

    printTemp(r1);
    llvmWrite(", ");
    printTemp(r2);

    llvmWrite("\nbr i1 ");
    printTemp(t);

    llvmWrite(", label ");
    printLabel(lt);
    llvmWrite(", label ");
    printLabel(lf);

    return t;
}

static int genCond(Exp *e, int lt, int lf, int nIdent) {
    switch(e->tag){
        case ExpOr: {
            int nl = getNextTempLabel();
            genCond(e->u.bin.e1,lt,nl,nIdent);
            genLabel(nl);
            genCond(e->u.bin.e2,lt,lf,nIdent);
            break;
        }

        case ExpNot: {
            return genCond(e->u.un,lf,lt,nIdent);
        }

        case ExpAnd: {
            int nl = getNextTempLabel();
            genCond(e->u.bin.e1,nl,lf,nIdent);
            genLabel(nl);
            genCond(e->u.bin.e2,lt,lf,nIdent);
            break;
        }

        case ExpLess: {
            return genCondComp(e, e->type->name == VarFloat ? "olt" : "slt", lt, lf, nIdent);
        }

        case ExpLessEqual: {
            return genCondComp(e, e->type->name == VarFloat ? "ole" : "sle", lt, lf, nIdent);
        }

        case ExpGreater: {
            return genCondComp(e, e->type->name == VarFloat ? "ogt" : "sgt", lt, lf, nIdent);
        }

        case ExpGreaterEqual: {
            return genCondComp(e, e->type->name == VarFloat ? "oge" : "sge", lt, lf, nIdent);
        }

        case ExpEqual: {
            int r1 = genExp(e->u.bin.e1,nIdent);
            int r2 = genExp(e->u.bin.e2,nIdent);
            int t = getNextTempVar();

            genIdent(nIdent);
            printTemp(t);
            llvmWrite(" = %ccmp%seq ", (e->u.bin.e1->type->name == VarInt ? 'i' : 'f'), (e->u.bin.e1->type->name == VarInt ? " " : " o"));

            genType(e->u.bin.e1->type);

            llvmWrite(" ");
            printTemp(r1);
            llvmWrite(", ");
            printTemp(r2);

            llvmWrite("\nbr i1 ");
            printTemp(t);
            llvmWrite(", label ");
            printLabel(lt);
            llvmWrite(", label ");
            printLabel(lf);

            return t;
        }

        case ExpCall: {
            int result = genCmdCall(e->u.call, nIdent);
            int ret = getNextTempVar();

            //testa se result é true
            genIdent(nIdent);
            printTemp(ret);
            llvmWrite(" = %ccmp%seq ", (e->u.bin.e1->type->name == VarInt ? 'i' : 'f'), (e->u.bin.e1->type->name == VarInt ? " " : " o"));
            genType(e->u.call->type);
            llvmWrite(" ");
            printTemp(result);
            llvmWrite(", 0\nbr i1 ");
            printTemp(ret);
            llvmWrite(", label ");
            printLabel(lf);
            llvmWrite(", label ");
            printLabel(lt);

            return ret;
        }

        case ExpInt:{
            int result = genExp(e, nIdent);
            int ret = getNextTempVar();

            //testa se result é true
            genIdent(nIdent);
            printTemp(ret);
            llvmWrite(" = icmp eq i32 ");
            printTemp(result);
            llvmWrite(", 0\nbr i1 ");
            printTemp(ret);
            llvmWrite(", label ");
            printLabel(lf);
            llvmWrite(", label ");
            printLabel(lt);

            return ret;
        }

        case ExpFloat: {
            int result = genExp(e, nIdent);
            int ret = getNextTempVar();

            //testa se result é true
            genIdent(nIdent);
            printTemp(ret);
            llvmWrite(" = fcmp oeq float ");
            printTemp(result);
            llvmWrite(", 0.0\nbr i1 ");
            printTemp(ret);
            llvmWrite(", label ");
            printLabel(lf);
            llvmWrite(", label ");
            printLabel(lt);

            return ret;
        }

        default: {
            printf("Invalid tag - genCond. Exiting.\n");
            exit(-1);
        }
    }

    return -3;
}

static void doubleToHex(double d){
    int i;
    double f = (float) d;
    unsigned char buff[sizeof(double)];
    memcpy(buff, &f, sizeof(double));
    llvmWrite("0x");
    for(i = sizeof(double) - 1; i >= 0; i--) llvmWrite("%02x", buff[i]);
}

static int genArith(Exp *exp, int nIdent)
{
    int e1 = genExp(exp->u.bin.e1, nIdent);
    int e2 = genExp(exp->u.bin.e2, nIdent);
    int ret = getNextTempVar();
    char *op;
    char *type;

    if(exp->u.bin.e1->type->name == VarFloat)
    {
        type = "float";

        if(exp->tag == ExpAdd) op = "fadd";
        else if(exp->tag == ExpSub) op = "fsub";
        else if(exp->tag == ExpMul) op = "fmul";
        else if(exp->tag == ExpDiv)   op = "fdiv";
        else
        {
            printf("Invalid operation on line %d. Exiting.\n", exp->line);
            exit(-1);
        }
    }
    else
    {
        type = "i32";

        if(exp->tag == ExpAdd) op = "add";
        else if(exp->tag == ExpSub) op = "sub";
        else if(exp->tag == ExpMul) op = "mul";
        else if(exp->tag == ExpDiv)   op = "sdiv";
        else
        {
            printf("Invalid operation on line %d. Exiting.\n", exp->line);
            exit(-1);
        }
    }

    genIdent(nIdent);
    printTemp(ret);
    llvmWrite(" = %s %s ", op, type);
    printTemp(e1);
    llvmWrite(", ");
    printTemp(e2);
    llvmWrite("\n");

    return ret;
}

static int genExpVar(Exp *exp, int nIdent)
{
    int ret = getNextTempVar();
    char *type;

    genIdent(nIdent);

    if(exp->u.var->u.def.decTag == VarParam)
    {
        ret = exp->u.var->u.def.tag.p->varNumber;
    }
    else
    {
        char *accessType;

        if(exp->u.var->u.def.tag.dec->type->name == VarFloat)
        {
            type = "float";
        }
        else if(exp->u.var->u.def.tag.dec->type->name == VarChar)
        {
            type = "i8";
        }
        else
        {
            type = "i32";
        }

        if(exp->u.var->u.def.tag.dec->isGlobal)
        {
            accessType = "@";
        }
        else
        {
            accessType = "%";
        }

        printTemp(ret);
        llvmWrite(" = load %s* %st%d\n", type, accessType, exp->u.var->u.def.tag.dec->varNumber);
    }

    return ret;
}

static int genExp(Exp *exp, int nIdent) {
    if(exp == NULL)
    {
        return -3;
    }

    switch(exp->tag){
        case ExpAdd:
        case ExpSub:
        case ExpMul:
        case ExpDiv:
            return genArith(exp, nIdent);
        case ExpEqual:
        case ExpLess:
        case ExpGreater:
        case ExpLessEqual:
        case ExpGreaterEqual:
        case ExpAnd:
        case ExpNot:
        case ExpOr: {
            int lt = getNextTempLabel();
            int lf = getNextTempLabel();
            int lAfter = getNextTempLabel();
            int ret = getNextTempVar();
            int temp1 = getNextTempLabel();
            int temp2 = getNextTempLabel();

            genCond(exp,lt,lf,nIdent);

            genLabel(lt);
            genIdent(nIdent);
            printTemp(temp1);
            llvmWrite(" = %sadd %s 0%s, 1%s\n", exp->type->name == VarFloat ? "f" : "", exp->type->name == VarFloat ? "float" : "i32", exp->type->name == VarFloat ? ".0" : "", exp->type->name == VarFloat ? ".0" : "");
            llvmWrite("br label %%l%d\n", lAfter);
            genLabel(lf);
            genIdent(nIdent);
            printTemp(temp2);
            llvmWrite(" = %sadd %s 0%s, 0%s\n", exp->type->name == VarFloat ? "f" : "", exp->type->name == VarFloat ? "float" : "i32", exp->type->name == VarFloat ? ".0" : "", exp->type->name == VarFloat ? ".0" : "");
            genLabel(lAfter);

            genIdent(nIdent);
            printTemp(ret);
            llvmWrite(" = phi %s [", exp->type->name == VarFloat ? "float" : "i32");
            printTemp(temp1);
            llvmWrite(",");
            printLabel(lt);
            llvmWrite("], [");
            printTemp(temp2);
            llvmWrite(",");
            printLabel(lf);
            llvmWrite("]\n");

            return ret;
        }
        case ExpVar:
            return genExpVar(exp, nIdent);
        case ExpCall:
            return genCmdCall(exp->u.call, nIdent);
        case ExpMinus: {
            int t = genExp(exp->u.un, nIdent);
            int ret = getNextTempVar();
            genIdent(nIdent);
            printTemp(ret);
            llvmWrite(" = %smul ", (exp->type->name == VarInt ? "" : "f"));
            genType(exp->u.un->type);
            llvmWrite(" ");
            printTemp(t);
            llvmWrite(", -1%s\n", (exp->type->name == VarInt ? "" : ".0"));
            return ret;
        }
        case ExpNew:
//            printIdent(nIdent);
//            printf("Expression type: New\n");
//            printType(exp->u.newexp.type, nIdent);
//            printIdent(nIdent);
//            printf("Expression resulting ");
//            printType(exp->type, 0);
//            printExp(exp->u.newexp.exp, nIdent);
            break;
        case ExpString: {
            int temp = getNextTempVar();
            int ret = getNextTempVar();

            genIdent(nIdent);
            llvmWrite("%%t%d = alloca i8\n", temp);
            genIdent(nIdent);
            llvmWrite("store i8 %d, i8* %%t%d\n", exp->u.c[0], temp);
            genIdent(nIdent);
            llvmWrite("%%t%d = load i8* %%t%d\n", ret, temp);
            return ret;
        }
        case ExpInt: {
            int ret = getNextTempVar();
            genIdent(nIdent);
            printTemp(ret);
            llvmWrite(" = add i32 0, %d\n", exp->u.l);
            return ret;
        }
        case ExpFloat: {
            int ret = getNextTempVar();
            genIdent(nIdent);
            printTemp(ret);
            llvmWrite(" = fadd float 0.0, ");
            doubleToHex(exp->u.d);
            llvmWrite("\n");
            return ret;
        }
        case ExpCastIntToFloat: {
            int temp = genExp(exp->u.un, nIdent + 1);
            int ret = getNextTempVar();

            genIdent(nIdent);
            llvmWrite("%%t%d = sitofp i32 %%t%d to float\n", ret, temp);

            return ret;
        }
        default:
            printf("Invalid expression type %d. Exiting\n", exp->tag);
            exit(-5);
    }

    return -2;
}

static void genVar(Var *var, int nIdent) {
    //printIdent(nIdent);
    //printf("Expression type: Variable\n");
    //printIdent(nIdent);
    //printf("Expression resulting ");
    //printType(exp->type, 0);
    //printVar(exp->u.var, nIdent+1);


    // TODO: Tratar varindexed

    if(!var->u.def.tag.dec->isGlobal) {
        printTemp(var->u.def.tag.dec->varNumber);
    }
    else
    {
        llvmWrite("@t%d", var->u.def.tag.dec->varNumber);
    }
}

static int genCmdCall(CmdCall *cmd, int nIdent) {
    ExpList * current;

    int ret = getNextTempVar();
    const int bufferSize = 4096;
    int buffer = bufferSize;
    char *callArgs = (char *) malloc(sizeof(char) * buffer);
    int length = 2;

    if(callArgs == NULL)
    {
        printf("Unable to allocate memory for argument list. Exiting.\n");
        exit(-1);
    }

    sprintf(callArgs,"(");

    for(current = cmd->parameters; current != NULL; current = current->next) {
        int arg = genExp(current->exp, nIdent);
        char *type = getType(current->exp->type);

        length += 2 + floor(log10(abs(arg))) + 1 + 7; // 7 -> type
        if(length > buffer)
        {
            buffer += bufferSize;
            callArgs = (char *) realloc(callArgs, sizeof(char) * buffer);

            if(callArgs == NULL)
            {
                printf("Unable to reallocate memory for argument list. Exiting.\n");
                exit(-1);
            }
        }

        sprintf(callArgs + strlen(callArgs), "%s %%t%d", type, arg);

        if(current->next != NULL) sprintf(callArgs + strlen(callArgs), ",");
    }

    sprintf(callArgs + strlen(callArgs),")");

    genIdent(nIdent);
    printTemp(ret);
    llvmWrite(" = call ");

    genType(cmd->type);

    llvmWrite(" @%s%s\n", cmd->id, callArgs);

    free(callArgs);

    return ret;
}

static void genCmdBasic(CmdBasic *cmd, int nIdent) {
    switch(cmd->type){
        case CmdBasicReturn: {
            int temp = genExp(cmd->u.returnExp, nIdent);
            genIdent(nIdent);
            llvmWrite("ret ");
            genType(cmd->u.returnExp->type);
            llvmWrite(" ");
            printTemp(temp);
            llvmWrite("\n");
            break;
        }
        case CmdBasicCall: {
            genCmdCall(cmd->u.call, nIdent);
            break;
        }
        case CmdBasicBlock:
            genBlock(cmd->u.block, nIdent);
            break;
        case CmdBasicVar: {
            int expNameId = genExp(cmd->u.varCmd.exp, nIdent);

            // TODO CHeck e = -1, then get var name
            genIdent(nIdent);
            llvmWrite("store ");
            genType(cmd->u.varCmd.exp->type);
            llvmWrite(" ");
            printTemp(expNameId);
            llvmWrite(", ");

            switch(cmd->u.varCmd.var->tag)
            {
                case VarId:
                    genType(cmd->u.varCmd.var->u.def.tag.dec->type);
                    break;
                case VarIndexed:
                    // TODO
                    break;
            }

            llvmWrite("* ");
            genVar(cmd->u.varCmd.var, nIdent);
            llvmWrite("\n");

            break;
        }
        default:
            printf("Invalid command type. Exiting.\n");
            exit(-3);
    }
}

