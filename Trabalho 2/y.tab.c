#ifndef lint
static const char yysccsid[] = "@(#)yaccpar	1.9 (Berkeley) 02/21/93";
#endif

#define YYBYACC 1
#define YYMAJOR 1
#define YYMINOR 9
#define YYPATCH 20140101

#define YYEMPTY        (-1)
#define yyclearin      (yychar = YYEMPTY)
#define yyerrok        (yyerrflag = 0)
#define YYRECOVERING() (yyerrflag != 0)

#define YYPREFIX "yy"

#define YYPURE 0

#line 2 "monga.y"

/*
    Marcelo Paulon - 1411029
    Renan da Fonte - 1412122
*/

#include <stdio.h>
#include <stdlib.h>

#include "lex.yy.h"

void yyerror(const char *);

MongaToken token;

#line 35 "y.tab.c"

#ifndef YYSTYPE
typedef int YYSTYPE;
#endif

/* compatibility with bison */
#ifdef YYPARSE_PARAM
/* compatibility with FreeBSD */
# ifdef YYPARSE_PARAM_TYPE
#  define YYPARSE_DECL() yyparse(YYPARSE_PARAM_TYPE YYPARSE_PARAM)
# else
#  define YYPARSE_DECL() yyparse(void *YYPARSE_PARAM)
# endif
#else
# define YYPARSE_DECL() yyparse(void)
#endif

/* Parameters sent to lex. */
#ifdef YYLEX_PARAM
# define YYLEX_DECL() yylex(void *YYLEX_PARAM)
# define YYLEX yylex(YYLEX_PARAM)
#else
# define YYLEX_DECL() yylex(void)
# define YYLEX yylex()
#endif

/* Parameters sent to yyerror. */
#ifndef YYERROR_DECL
#define YYERROR_DECL() yyerror(const char *s)
#endif
#ifndef YYERROR_CALL
#define YYERROR_CALL(msg) yyerror(msg)
#endif

extern int YYPARSE_DECL();

#define TK_LE 257
#define TK_GE 258
#define TK_AND 259
#define TK_OR 260
#define TK_IF 261
#define TK_ELSE 262
#define TK_CHAR 263
#define TK_FLOAT 264
#define TK_INT 265
#define TK_NEW 266
#define TK_RETURN 267
#define TK_VOID 268
#define TK_WHILE 269
#define TK_ID 270
#define TK_UNKNOWN 271
#define TK_DOUBLE_NUMBER 272
#define TK_LONG_NUMBER 273
#define TK_STRING 274
#define YYERRCODE 256
static const short yylhs[] = {                           -1,
    0,    1,    1,    2,    2,    4,    4,    6,    6,    8,
    8,    9,   10,   10,    3,   11,   11,    5,    5,   12,
   12,   12,    7,    7,   13,   13,   14,   14,   16,   16,
   17,   17,   15,   15,   15,   15,   15,   15,   15,   19,
   20,   20,   18,   18,
};
static const short yylen[] = {                            2,
    1,    1,    2,    1,    1,    6,    6,    1,    0,    3,
    1,    2,    1,    3,    3,    1,    2,    1,    3,    1,
    1,    1,    4,    2,    1,    2,    2,    3,    1,    1,
    1,    4,    1,    1,    1,    3,    1,    5,    1,    2,
    3,    1,    4,    3,
};
static const short yydefred[] = {                         0,
   21,   22,   20,    0,    0,    1,    0,    4,    5,    0,
   18,    0,    3,    0,    0,    0,    0,    0,    0,   19,
   15,    0,    0,    8,    0,    0,    0,   14,   12,    0,
    0,    0,    0,    7,   10,    6,   24,    0,    0,    0,
   17,    0,    0,    0,    0,    0,   29,   30,   34,    0,
   27,    0,    0,   33,   35,   37,   39,   23,   26,    0,
    0,    0,    0,   28,    0,    0,   44,    0,    0,   36,
    0,    0,    0,   43,   32,   38,   41,
};
static const short yydgoto[] = {                          5,
    6,    7,    8,    9,   22,   23,   34,   24,   25,   16,
   40,   11,   43,   44,   68,   54,   55,   56,   57,   69,
};
static const short yysindex[] = {                      -227,
    0,    0,    0, -249,    0,    0, -227,    0,    0,  -90,
    0,  -18,    0,  -24,  -65,  -28, -221, -221, -231,    0,
    0,  -89,   -1,    0,    2,    6,    7,    0,    0,  -71,
 -221,  -71, -121,    0,    0,    0,    0, -221,  -88, -214,
    0,  -40,  -60, -214, -221,   26,    0,    0,    0,  -13,
    0,  -13,  -46,    0,    0,    0,    0,    0,    0,  -23,
  -31,  -35,  -21,    0,  -13,  -22,    0,  -37,   28,    0,
  -34,  -30,  -13,    0,    0,    0,    0,
};
static const short yyrindex[] = {                         0,
    0,    0,    0,    0,    0,    0,   67,    0,    0,    0,
    0,    0,    0,   13,    0,    0,   32,   32,    0,    0,
    0,    0,    0,    0,   33,    0,   13,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0, -192,    0,    0,
    0,    0,    0,  -49,    0,  -33,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,  -29,    0,    0,    0,    0,   36,    0,    0,
    0,    0,    0,    0,    0,    0,    0,
};
static const short yygindex[] = {                         0,
   71,    0,   -4,    0,   17,   61,   48,   50,    0,   63,
   45,    0,   40,    0,  -17,    0,    0,    0,    0,   12,
};
#define YYTABLESIZE 261
static const short yytable[] = {                         50,
   15,   15,   15,   37,   52,   70,   73,   31,   50,   67,
   31,   40,   64,   52,   40,   18,   10,   50,   51,   19,
   12,   17,   52,   10,   53,   31,   50,   20,   38,   40,
   21,   52,   62,   38,   63,    1,    2,    3,   27,   30,
    4,    1,    2,    3,   65,   31,   32,   71,   72,   39,
   19,   33,   42,   65,   39,   65,   65,   31,   75,   31,
   65,   60,   76,   40,   58,   61,    2,   66,   74,   65,
   20,   13,    9,   11,   16,   25,   42,   13,   26,   36,
   35,   28,   41,   59,   77,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    1,    2,    3,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,   14,
   29,   27,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,   45,    0,    0,    0,   46,
    0,   47,   48,   49,   45,    0,    0,    0,   46,    0,
   47,   48,   49,   45,    0,    0,    0,   46,    0,   47,
   48,   49,   45,    0,    0,    0,   46,    0,   47,   48,
   49,
};
static const short yycheck[] = {                         40,
   91,   91,   91,  125,   45,   41,   44,   41,   40,   41,
   44,   41,   59,   45,   44,   40,    0,   40,   59,   44,
  270,   40,   45,    7,   42,   59,   40,   93,   33,   59,
   59,   45,   50,   38,   52,  263,  264,  265,  270,   41,
  268,  263,  264,  265,   91,   44,   41,   65,   66,   33,
   44,  123,  267,   91,   38,   91,   91,   91,   93,   93,
   91,   45,   93,   93,  125,   40,    0,   91,   41,   91,
   93,   59,   41,   41,  267,  125,   41,    7,   18,   32,
   31,   19,   38,   44,   73,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,  263,  264,  265,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,  270,
  270,  270,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,  266,   -1,   -1,   -1,  270,
   -1,  272,  273,  274,  266,   -1,   -1,   -1,  270,   -1,
  272,  273,  274,  266,   -1,   -1,   -1,  270,   -1,  272,
  273,  274,  266,   -1,   -1,   -1,  270,   -1,  272,  273,
  274,
};
#define YYFINAL 5
#ifndef YYDEBUG
#define YYDEBUG 0
#endif
#define YYMAXTOKEN 274
#define YYTRANSLATE(a) ((a) > YYMAXTOKEN ? (YYMAXTOKEN + 1) : (a))
#if YYDEBUG
static const char *yyname[] = {

"end-of-file",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,"'('","')'",0,0,"','","'-'",0,0,0,0,0,0,0,0,0,0,0,0,0,"';'",0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"'['",0,"']'",0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"'{'",0,"'}'",0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,"TK_LE","TK_GE","TK_AND","TK_OR","TK_IF","TK_ELSE","TK_CHAR","TK_FLOAT",
"TK_INT","TK_NEW","TK_RETURN","TK_VOID","TK_WHILE","TK_ID","TK_UNKNOWN",
"TK_DOUBLE_NUMBER","TK_LONG_NUMBER","TK_STRING","illegal-symbol",
};
static const char *yyrule[] = {
"$accept : program",
"program : definitions",
"definitions : definition",
"definitions : definition definitions",
"definition : defvar",
"definition : deffunc",
"deffunc : type TK_ID '(' funcparams ')' block",
"deffunc : TK_VOID TK_ID '(' funcparams ')' block",
"funcparams : params",
"funcparams :",
"params : param ',' params",
"params : param",
"param : type TK_ID",
"nameslist : TK_ID",
"nameslist : TK_ID ',' nameslist",
"defvar : type nameslist ';'",
"defvars : defvar",
"defvars : defvar defvars",
"type : basetype",
"type : type '[' ']'",
"basetype : TK_INT",
"basetype : TK_CHAR",
"basetype : TK_FLOAT",
"block : '{' defvars commands '}'",
"block : '{' '}'",
"commands : command",
"commands : command commands",
"command : TK_RETURN ';'",
"command : TK_RETURN exp ';'",
"numeral : TK_DOUBLE_NUMBER",
"numeral : TK_LONG_NUMBER",
"var : TK_ID",
"var : exp '[' exp ']'",
"exp : numeral",
"exp : TK_STRING",
"exp : var",
"exp : '(' exp ')'",
"exp : call",
"exp : TK_NEW type '[' exp ']'",
"exp : modifiedexp",
"modifiedexp : '-' exp",
"explist : exp ',' explist",
"explist : exp",
"call : TK_ID '(' explist ')'",
"call : TK_ID '(' ')'",

};
#endif

int      yydebug;
int      yynerrs;

int      yyerrflag;
int      yychar;
YYSTYPE  yyval;
YYSTYPE  yylval;

/* define the initial stack-sizes */
#ifdef YYSTACKSIZE
#undef YYMAXDEPTH
#define YYMAXDEPTH  YYSTACKSIZE
#else
#ifdef YYMAXDEPTH
#define YYSTACKSIZE YYMAXDEPTH
#else
#define YYSTACKSIZE 10000
#define YYMAXDEPTH  10000
#endif
#endif

#define YYINITSTACKSIZE 200

typedef struct {
    unsigned stacksize;
    short    *s_base;
    short    *s_mark;
    short    *s_last;
    YYSTYPE  *l_base;
    YYSTYPE  *l_mark;
} YYSTACKDATA;
/* variables for the parser stack */
static YYSTACKDATA yystack;
#line 129 "monga.y"

int main(void)
{
  int parsingResult = yyparse();

  if(parsingResult == 0)
  {
    printf("PASS");
  }
  else
  {
    printf("FAIL");
  }

  return 0;
}

void yyerror (char const *s) {
    //fprintf (stderr, "%s\n", s);
    printf("FAIL");
    exit(-1);
}
#line 327 "y.tab.c"

#if YYDEBUG
#include <stdio.h>		/* needed for printf */
#endif

#include <stdlib.h>	/* needed for malloc, etc */
#include <string.h>	/* needed for memset */

/* allocate initial stack or double stack size, up to YYMAXDEPTH */
static int yygrowstack(YYSTACKDATA *data)
{
    int i;
    unsigned newsize;
    short *newss;
    YYSTYPE *newvs;

    if ((newsize = data->stacksize) == 0)
        newsize = YYINITSTACKSIZE;
    else if (newsize >= YYMAXDEPTH)
        return -1;
    else if ((newsize *= 2) > YYMAXDEPTH)
        newsize = YYMAXDEPTH;

    i = (int) (data->s_mark - data->s_base);
    newss = (short *)realloc(data->s_base, newsize * sizeof(*newss));
    if (newss == 0)
        return -1;

    data->s_base = newss;
    data->s_mark = newss + i;

    newvs = (YYSTYPE *)realloc(data->l_base, newsize * sizeof(*newvs));
    if (newvs == 0)
        return -1;

    data->l_base = newvs;
    data->l_mark = newvs + i;

    data->stacksize = newsize;
    data->s_last = data->s_base + newsize - 1;
    return 0;
}

#if YYPURE || defined(YY_NO_LEAKS)
static void yyfreestack(YYSTACKDATA *data)
{
    free(data->s_base);
    free(data->l_base);
    memset(data, 0, sizeof(*data));
}
#else
#define yyfreestack(data) /* nothing */
#endif

#define YYABORT  goto yyabort
#define YYREJECT goto yyabort
#define YYACCEPT goto yyaccept
#define YYERROR  goto yyerrlab

int
YYPARSE_DECL()
{
    int yym, yyn, yystate;
#if YYDEBUG
    const char *yys;

    if ((yys = getenv("YYDEBUG")) != 0)
    {
        yyn = *yys;
        if (yyn >= '0' && yyn <= '9')
            yydebug = yyn - '0';
    }
#endif

    yynerrs = 0;
    yyerrflag = 0;
    yychar = YYEMPTY;
    yystate = 0;

#if YYPURE
    memset(&yystack, 0, sizeof(yystack));
#endif

    if (yystack.s_base == NULL && yygrowstack(&yystack)) goto yyoverflow;
    yystack.s_mark = yystack.s_base;
    yystack.l_mark = yystack.l_base;
    yystate = 0;
    *yystack.s_mark = 0;

yyloop:
    if ((yyn = yydefred[yystate]) != 0) goto yyreduce;
    if (yychar < 0)
    {
        if ((yychar = YYLEX) < 0) yychar = 0;
#if YYDEBUG
        if (yydebug)
        {
            yys = yyname[YYTRANSLATE(yychar)];
            printf("%sdebug: state %d, reading %d (%s)\n",
                    YYPREFIX, yystate, yychar, yys);
        }
#endif
    }
    if ((yyn = yysindex[yystate]) && (yyn += yychar) >= 0 &&
            yyn <= YYTABLESIZE && yycheck[yyn] == yychar)
    {
#if YYDEBUG
        if (yydebug)
            printf("%sdebug: state %d, shifting to state %d\n",
                    YYPREFIX, yystate, yytable[yyn]);
#endif
        if (yystack.s_mark >= yystack.s_last && yygrowstack(&yystack))
        {
            goto yyoverflow;
        }
        yystate = yytable[yyn];
        *++yystack.s_mark = yytable[yyn];
        *++yystack.l_mark = yylval;
        yychar = YYEMPTY;
        if (yyerrflag > 0)  --yyerrflag;
        goto yyloop;
    }
    if ((yyn = yyrindex[yystate]) && (yyn += yychar) >= 0 &&
            yyn <= YYTABLESIZE && yycheck[yyn] == yychar)
    {
        yyn = yytable[yyn];
        goto yyreduce;
    }
    if (yyerrflag) goto yyinrecovery;

    yyerror("syntax error");

    goto yyerrlab;

yyerrlab:
    ++yynerrs;

yyinrecovery:
    if (yyerrflag < 3)
    {
        yyerrflag = 3;
        for (;;)
        {
            if ((yyn = yysindex[*yystack.s_mark]) && (yyn += YYERRCODE) >= 0 &&
                    yyn <= YYTABLESIZE && yycheck[yyn] == YYERRCODE)
            {
#if YYDEBUG
                if (yydebug)
                    printf("%sdebug: state %d, error recovery shifting\
 to state %d\n", YYPREFIX, *yystack.s_mark, yytable[yyn]);
#endif
                if (yystack.s_mark >= yystack.s_last && yygrowstack(&yystack))
                {
                    goto yyoverflow;
                }
                yystate = yytable[yyn];
                *++yystack.s_mark = yytable[yyn];
                *++yystack.l_mark = yylval;
                goto yyloop;
            }
            else
            {
#if YYDEBUG
                if (yydebug)
                    printf("%sdebug: error recovery discarding state %d\n",
                            YYPREFIX, *yystack.s_mark);
#endif
                if (yystack.s_mark <= yystack.s_base) goto yyabort;
                --yystack.s_mark;
                --yystack.l_mark;
            }
        }
    }
    else
    {
        if (yychar == 0) goto yyabort;
#if YYDEBUG
        if (yydebug)
        {
            yys = yyname[YYTRANSLATE(yychar)];
            printf("%sdebug: state %d, error recovery discards token %d (%s)\n",
                    YYPREFIX, yystate, yychar, yys);
        }
#endif
        yychar = YYEMPTY;
        goto yyloop;
    }

yyreduce:
#if YYDEBUG
    if (yydebug)
        printf("%sdebug: state %d, reducing by rule %d (%s)\n",
                YYPREFIX, yystate, yyn, yyrule[yyn]);
#endif
    yym = yylen[yyn];
    if (yym)
        yyval = yystack.l_mark[1-yym];
    else
        memset(&yyval, 0, sizeof yyval);
    switch (yyn)
    {
case 1:
#line 42 "monga.y"
	{}
break;
case 2:
#line 45 "monga.y"
	{}
break;
case 3:
#line 46 "monga.y"
	{}
break;
case 4:
#line 49 "monga.y"
	{}
break;
case 5:
#line 50 "monga.y"
	{}
break;
case 6:
#line 53 "monga.y"
	{}
break;
case 7:
#line 54 "monga.y"
	{}
break;
case 9:
#line 58 "monga.y"
	{}
break;
case 13:
#line 68 "monga.y"
	{}
break;
case 14:
#line 69 "monga.y"
	{}
break;
case 15:
#line 72 "monga.y"
	{}
break;
case 16:
#line 75 "monga.y"
	{}
break;
case 17:
#line 76 "monga.y"
	{}
break;
case 18:
#line 79 "monga.y"
	{}
break;
case 19:
#line 80 "monga.y"
	{}
break;
case 20:
#line 83 "monga.y"
	{}
break;
case 21:
#line 84 "monga.y"
	{}
break;
case 22:
#line 85 "monga.y"
	{}
break;
#line 601 "y.tab.c"
    }
    yystack.s_mark -= yym;
    yystate = *yystack.s_mark;
    yystack.l_mark -= yym;
    yym = yylhs[yyn];
    if (yystate == 0 && yym == 0)
    {
#if YYDEBUG
        if (yydebug)
            printf("%sdebug: after reduction, shifting from state 0 to\
 state %d\n", YYPREFIX, YYFINAL);
#endif
        yystate = YYFINAL;
        *++yystack.s_mark = YYFINAL;
        *++yystack.l_mark = yyval;
        if (yychar < 0)
        {
            if ((yychar = YYLEX) < 0) yychar = 0;
#if YYDEBUG
            if (yydebug)
            {
                yys = yyname[YYTRANSLATE(yychar)];
                printf("%sdebug: state %d, reading %d (%s)\n",
                        YYPREFIX, YYFINAL, yychar, yys);
            }
#endif
        }
        if (yychar == 0) goto yyaccept;
        goto yyloop;
    }
    if ((yyn = yygindex[yym]) && (yyn += yystate) >= 0 &&
            yyn <= YYTABLESIZE && yycheck[yyn] == yystate)
        yystate = yytable[yyn];
    else
        yystate = yydgoto[yym];
#if YYDEBUG
    if (yydebug)
        printf("%sdebug: after reduction, shifting from state %d \
to state %d\n", YYPREFIX, *yystack.s_mark, yystate);
#endif
    if (yystack.s_mark >= yystack.s_last && yygrowstack(&yystack))
    {
        goto yyoverflow;
    }
    *++yystack.s_mark = (short) yystate;
    *++yystack.l_mark = yyval;
    goto yyloop;

yyoverflow:
    yyerror("yacc stack overflow");

yyabort:
    yyfreestack(&yystack);
    return (1);

yyaccept:
    yyfreestack(&yystack);
    return (0);
}
