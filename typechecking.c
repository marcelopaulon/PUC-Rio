#include <stdio.h>
#include <stdlib.h>

#include "typechecking.h"

static SymbolTable *table = NULL;

static char *curFunction = NULL;
static Type *curReturnType = NULL;

void checkBlock(Block *block);
void checkCmdCall(CmdCall *cmd);
Type *checkVar(Var *var, Exp **exp, int line);

int typeEquals(Type *t1, Type *t2)
{
    if(t1 == NULL && t2 != NULL) return 0;
    if(t2 == NULL && t1 != NULL) return 0;
    if(t1 == NULL && t2 == NULL) return 1;
    if(t1->name != t2->name && !(t1->name == VarInt && t2->name == VarChar) && !(t1->name == VarChar && t2->name == VarInt)) return 0;
    if(t1->brackets != t2->brackets) return 0;
    return 1;
}

int isExpNumerical(Exp *e)
{
    Type *type = e->type;

    if(type->name != VarFloat && type->name != VarInt) return 0;
    if(type->brackets != 0) return 0;
    return 1;
}

void checkSymbolRedefinition(char *id)
{
    if(findCurrentScope(table, id) != NULL)
    {
        printf("Symbol %s has already been defined in this scope. Exiting.\n", id);
        exit(-1);
    }
}

void checkParamList(ParamList * list)
{
    ParamList * current;
    
    if(list == NULL)
    {
        return;
    }

    for(current = list; current != NULL; current = current->next)
    {
        checkSymbolRedefinition(current->param->id);
        addParam(table, current->param);
    }
}

void checkDefVarList(DefVarList *defvarlist)
{
    DefVarList * current;

    if(defvarlist == NULL)
    {
        return;
    }

    for(current = defvarlist; current != NULL; current = current->next)
    {
        checkSymbolRedefinition(current->defvar->id);
        addDecVar(table, current->defvar);
    }
}

void checkExp(Exp *exp)
{
    if(exp == NULL) return;

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
            checkExp(exp->u.bin.e1);
            checkExp(exp->u.bin.e2);

            if(exp->u.bin.e1->type->brackets > 0 || exp->u.bin.e2->type->brackets > 0)
            {
                printf("Invalid array comparison. Exiting.\n");
                exit(-1);
            }
            
            if(exp->u.bin.e1->type->name == exp->u.bin.e2->type->name)
            {
                exp->type = exp->u.bin.e1->type;
            }
            else if(exp->u.bin.e1->type->name == VarFloat && exp->u.bin.e2->type->name == VarInt)
            {
                exp->u.bin.e2 = castIntToFloat(exp->u.bin.e2);
                exp->type = exp->u.bin.e1->type;
            }
            else if(exp->u.bin.e1->type->name == VarInt && exp->u.bin.e2->type->name == VarFloat)
            {
                exp->u.bin.e1 = castIntToFloat(exp->u.bin.e1);
                exp->type = exp->u.bin.e2->type;
            }
            else
            {
                printf("Invalid expression. Exiting.\n");
                exit(-1);
            }

        	break;
        case ExpVar:
            exp->type = checkVar(exp->u.var, NULL, exp->line);
        	break;
        case ExpCall:
            checkCmdCall(exp->u.call);
            exp->type = exp->u.call->type;
        	break;
        case ExpNot:
        case ExpMinus:
            checkExp(exp->u.un);
            exp->type = exp->u.un->type;
        	break;
        case ExpNew:
            checkExp(exp->u.newexp.exp);
            exp->type = mnew(Type);
            exp->type->name = exp->u.newexp.exp->type->name;
            exp->type->brackets = exp->u.newexp.exp->type->brackets + 1;
        	break;
        case ExpString:
            exp->type = (Type *) malloc(sizeof(Type));
            if(exp->type == NULL)
            {
                printf("Unable to allocate memory for Type. Exiting.");
                exit(-1);
            }

            exp->type->name = VarChar;
            exp->type->brackets = 0;
            exp->type->line = -1;
            
        	break;
        case ExpInt:
            exp->type = (Type *) malloc(sizeof(Type));
            if(exp->type == NULL)
            {
                printf("Unable to allocate memory for Type. Exiting.");
                exit(-1);
            }

            exp->type->name = VarInt;
            exp->type->brackets = 0;
            exp->type->line = -1;

        	break;
        case ExpFloat:
            exp->type = (Type *) malloc(sizeof(Type));
            if(exp->type == NULL)
            {
                printf("Unable to allocate memory for Type. Exiting.");
                exit(-1);
            }

            exp->type->name = VarFloat;
            exp->type->brackets = 0;
            exp->type->line = -1;
            
        	break;
        case ExpCastIntToFloat:
            break;
        default:
            printf("Invalid expression type %d. Exiting\n", exp->tag);
            exit(-5);
    }
}

void checkExpList(ExpList *expList)
{
    ExpList * current;

    if(expList == NULL)
    {
        return;
    }

    for(current = expList; current != NULL; current = current->next)
    {
        checkExp(current->exp);
    }
}

void checkCmdCall(CmdCall *cmd)
{
    DecList *temp = find(table, cmd->id);
    Func *f;

    ExpList * l1;
    ParamList * l2;

    if(temp == NULL)
    {
        printf("Undefined symbol %s called as function on line %d. Exiting.\n", cmd->id, cmd->line);
        exit(-1);
    }

    if(temp->type != 'f')
    {  
        printf("Attempted to call non-function symbol %s on line %d. Exiting.\n", cmd->id, cmd->line);
        exit(-1);
    }

    f = temp->val.f;

    cmd->func = f;
    cmd->type = f->type;
    checkExpList(cmd->parameters); 
    l1 = cmd->parameters;
    l2 = f->params;
  
    while(l1 != NULL && l2 != NULL) {
        if(!typeEquals(l1->exp->type, l2->param->type))
        {
            printf("Incompatible call signature for function %s on line %d. Exiting.\n", cmd->id, cmd->line);
            exit(-1);
        }

        l1 = l1->next;
        l2 = l2->next;
    }

    if(l1 != NULL || l2 != NULL)
    {
        printf("Incompatible call signature for function %s on line %d. Exiting.\n", cmd->id, cmd->line);
        exit(-1);
    }
}

Type *checkVar(Var *var, Exp **exp, int line)
{
    if(exp != NULL)
    {
        checkExp(*exp);
    }

    if(var->tag == VarId)
    {
        DecList *temp = find(table, var->u.def.id);
        if(temp == NULL)
        {
            printf("Undefined symbol %s at line %d. Exiting.\n", var->u.def.id, line);
            exit(-1);
        }

        if(temp->type != 'p' && temp->type != 'v')
        {
            printf("Invalid assignment to symbol %s at line %d. Exiting.\n", var->u.def.id, line);
            exit(-1);
        }

        if(exp != NULL && (*exp)->type->name == VarInt && (*exp)->type->brackets == 0 && ((temp->type == 'p' && temp->val.p->type->name == VarFloat && temp->val.p->type->brackets == 0) || (temp->type == 'v' && temp->val.v->type->name == VarFloat && temp->val.v->type->brackets == 0)))
        {
            Exp *temp = castIntToFloat(*exp);
            *exp = temp;
        }

        if(exp != NULL && ((temp->type == 'v' && !typeEquals(temp->val.v->type, (*exp)->type)) || (temp->type == 'p' && !typeEquals(temp->val.p->type, (*exp)->type))))
        {
            printf("Incompatible types in assignment to symbol %s at line %d. Exiting.\n", var->u.def.id, line);
            exit(-1);
        }

        if(temp->type == 'v') {
            var->u.def.dec = temp->val.v;
            if(temp->val.v->type->name != VarChar) {
                return temp->val.v->type;
            }
            else {
                Type *type = mnew(Type);
                type->name = VarInt;
                type->brackets = temp->val.v->type->brackets;
                return type;
            }
        }
        else {
            var->u.def.p = temp->val.p;

            if(temp->val.p->type->name != VarChar) {
                return temp->val.p->type;
            }
            else {
                Type *type = mnew(Type);
                type->name = VarInt;
                type->brackets = temp->val.p->type->brackets;
                return type;
            }
        }
    }
    else if(var->tag == VarIndexed)
    {
        checkExp(var->u.indexed.e1); // expothers
        checkExp(var->u.indexed.e2); // '[' expIdx ']'

        if(exp != NULL && !(var->u.indexed.e1->type->name == (*exp)->type->name && var->u.indexed.e1->type->brackets - 1 == (*exp)->type->brackets))
        {
            printf("Incompatible types in assignment to symbol at line %d. Exiting.\n", line);
            exit(-1);
        }

        return var->u.indexed.e1->type;
    }
    else
    {
        printf("Invalid var tag at line %d. Exiting.\n", line);
        exit(-1);
    }
}

void checkCmdBasic(CmdBasic *cmd)
{
    switch(cmd->type) {
        case CmdBasicReturn:
            if(cmd->u.returnExp != NULL)
            {
                checkExp(cmd->u.returnExp);

                if(!typeEquals(cmd->u.returnExp->type, curReturnType))
                {
                    printf("Function %s - invalid return type on line %d. Exiting.\n", curFunction, cmd->line);
                    exit(-1);
                }
            }
            break;
        case CmdBasicCall:
            checkCmdCall(cmd->u.call);
            break;
        case CmdBasicBlock:
            checkBlock(cmd->u.block);
            break;
        case CmdBasicVar:
            checkVar(cmd->u.varCmd.var, &(cmd->u.varCmd.exp), cmd->line);
            break;
        default:
            printf("Invalid command type. Exiting.\n");
            exit(-3);
    }
}

void checkCmd(Cmd *cmd)
{
    switch(cmd->type){
        case CmdWhile:
            checkExp(cmd->e);
            if(!isExpNumerical(cmd->e))
            {
                printf("While expression must return a numerical type. Exiting.\n");
                exit(-1);
            }

            checkCmd(cmd->u.cmd);
            break;
        case CmdIf:
            checkExp(cmd->e);
            if(!isExpNumerical(cmd->e))
            {
                printf("If expression must return a numerical type. Exiting.\n");
                exit(-1);
            }

            checkCmd(cmd->u.cmd);
            break;
        case CmdIfElse:
            checkExp(cmd->e);
            if(!isExpNumerical(cmd->e))
            {
                printf("If expression must return a numerical type. Exiting.\n");
                exit(-1);
            }

            checkCmd(cmd->u.cmds.c1);
            checkCmd(cmd->u.cmds.c2);
            break;
        case CmdBasicE:
            checkCmdBasic(cmd->u.cmdBasic);
            break;
        default:
            printf("Invalid command type. Exiting.\n");
            exit(-2);
    }
}

void checkCmdList(CmdList *cmdList)
{
    CmdList * current;

    if(cmdList == NULL)
    {
        return;
    }

    for(current = cmdList; current != NULL; current = current->next)
    {
        checkCmd(current->cmd);
    }
}

void checkBlock(Block *block)
{
    enterScope(&table);
    checkDefVarList(block->vars);
    checkCmdList(block->cmds);
    leaveScope(&table);
}

void checkDefFunc(Func *deffunc)
{
    checkSymbolRedefinition(deffunc->id);
    
    curFunction = deffunc->id;
    curReturnType = deffunc->type;
    
    addDecFunc(table, deffunc);

    enterScope(&table);

    checkParamList(deffunc->params);
    checkBlock(deffunc->block);

    leaveScope(&table);
}

void checkDefinition(Definition *definition)
{
    if(definition->type == TypeDefVar)
    {
        checkDefVarList(definition->u.defvarlist);
    }
    else if(definition->type == TypeDefFunc)
    {
        checkDefFunc(definition->u.deffunc);
    }
    else
    {
        printf("Error - Invalid definition type. Exiting.\n");
        exit(-1);
    }
}

void typeCheck(DefinitionList *tree)
{
    if(tree == NULL)
    {
        return;
    }

    if(table == NULL) table = create_symbolTable();

    checkDefinition(tree->definition);

    typeCheck(tree->next);
}
