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

#define IF_ONLY 257
#define TK_ELSE 258
#define TK_LE 259
#define TK_GE 260
#define TK_AND 261
#define TK_OR 262
#define TK_IF 263
#define TK_CHAR 264
#define TK_FLOAT 265
#define TK_INT 266
#define TK_NEW 267
#define TK_RETURN 268
#define TK_VOID 269
#define TK_WHILE 270
#define TK_ID 271
#define TK_UNKNOWN 272
#define TK_DOUBLE_NUMBER 273
#define TK_LONG_NUMBER 274
#define TK_STRING 275
#define YYERRCODE 256
static const short yylhs[] = {                           -1,
    0,    1,    1,    2,    2,    4,    4,    6,    6,    8,
    8,    9,   10,   10,    3,   11,   11,    5,    5,   12,
   12,   12,    7,    7,   13,   13,   14,   14,   14,   14,
   16,   16,   16,   16,   16,   19,   19,   17,   17,   21,
   21,   21,   21,   22,   22,   22,   22,   23,   23,   23,
   24,   24,   24,   24,   24,   25,   25,   26,   26,   27,
   27,   20,   20,   20,   20,   20,   15,   15,   28,   28,
   18,   18,
};
static const short yylen[] = {                            2,
    1,    1,    2,    1,    1,    6,    6,    1,    0,    3,
    1,    2,    1,    3,    3,    1,    2,    1,    3,    1,
    1,    1,    4,    2,    1,    2,    5,    7,    5,    1,
    4,    2,    3,    2,    1,    1,    1,    1,    4,    2,
    2,    2,    1,    3,    3,    3,    1,    3,    3,    1,
    3,    3,    3,    3,    1,    4,    1,    3,    1,    3,
    1,    1,    1,    1,    1,    5,    3,    1,    3,    1,
    4,    3,
};
static const short yydefred[] = {                         0,
   21,   22,   20,    0,    0,    1,    0,    4,    5,    0,
   18,    0,    3,    0,    0,    0,    0,    0,    0,   19,
   15,    0,    0,    8,    0,    0,    0,   14,   12,    0,
    0,    0,    0,    7,   10,    6,   24,    0,    0,    0,
   17,    0,    0,    0,    0,    0,   36,   37,   63,   35,
    0,    0,   30,    0,    0,   62,    0,    0,    0,    0,
   32,    0,    0,    0,    0,   64,   65,    0,   68,   43,
    0,    0,    0,    0,    0,    0,    0,   23,   26,    0,
   34,    0,    0,    0,    0,   40,   41,   42,   33,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,   72,    0,    0,    0,    0,    0,    0,   67,
    0,   44,   45,   46,   48,   49,   53,   54,   51,   52,
    0,   58,    0,    0,   71,   31,   39,    0,   66,   56,
   29,   69,    0,   28,
};
static const short yydgoto[] = {                          5,
    6,    7,    8,    9,   22,   23,   50,   24,   25,   16,
   40,   11,   51,   52,  104,   53,   66,   67,   56,   68,
   69,   70,   71,   72,   73,   74,   75,  105,
};
static const short yysindex[] = {                        18,
    0,    0,    0, -257,    0,    0,   18,    0,    0,  -89,
    0,  -25,    0,    2,  -60,  -10, -242, -242, -220,    0,
    0,  -87,   19,    0,   22,   27,   41,    0,    0,  -37,
 -242,  -37, -117,    0,    0,    0,    0, -242,  -86, -103,
    0,   54, -242,  -33,   55,   61,    0,    0,    0,    0,
  -16, -103,    0,   42,   52,    0,   30,   -6,   39,   -6,
    0,   -6,   -6,   -6,   93,    0,    0,  -85,    0,    0,
  176,   -5,  -59,   89, -108,   -6,  -24,    0,    0,   -6,
    0,   -6,  113,  -15,  116,    0,    0,    0,    0, -175,
 -175, -175, -175, -175, -175, -175, -175, -175, -175,  108,
 -175,  132,    0,  135,  139,  117,   96, -103,   99,    0,
   30,    0,    0,    0,    0,    0,    0,    0,    0,    0,
 -175,    0, -103,   -6,    0,    0,    0,  -72,    0,    0,
    0,    0, -103,    0,
};
static const short yyrindex[] = {                         0,
    0,    0,    0,    0,    0,    0,  197,    0,    0,    0,
    0,    0,    0,  150,    0,    0,  169,  169,    0,    0,
    0,    0,    0,    0,  175,    0,  150,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,  -80,    0,    0,
    0,    0,    0,    0,    0,   11,    0,    0,    0,    0,
    0,   90,    0,  128,  134,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,   20,    0,    0,
   -9,  185,  161,   82,   73,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,  187,    0,    0,    0,    0,    0,    0,
   46,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0, -112,    0,    0,
    0,    0,    0,    0,
};
static const short yygindex[] = {                         0,
  223,    0,   -2,    0,  174,  213,   15,  202,    0,  216,
  198,    0,  193,  -64,  232,    0,  -11,   91,    0,   88,
    0,    0,   45,   51,  -22,  118,  136,  122,
};
#define YYTABLESIZE 342
static const short yytable[] = {                         64,
   99,   15,   98,   15,   15,   82,   60,   37,   64,   62,
   27,   63,   27,   12,   17,   60,  103,   64,   62,   33,
   63,    1,    2,    3,   60,   61,   64,   62,   54,   63,
   38,   47,   20,   60,   47,   38,   62,   94,   63,   95,
   54,   18,   16,  128,   34,   19,   36,   38,   21,   47,
   27,   38,   38,   38,   38,   38,   61,   38,  131,   30,
   61,   61,   61,   61,   61,   31,   61,   32,  134,   38,
   38,   38,   38,  117,  118,  119,  120,   20,   61,   61,
   61,   61,   60,   47,   19,   33,   60,   60,   60,   60,
   60,   43,   60,   58,   76,   46,   54,   47,   48,   49,
   77,   38,   80,   38,   60,   60,   60,   60,   78,   59,
   81,   54,   61,   59,   59,   59,   59,   59,   57,   59,
   82,   54,   57,   57,   57,   57,   57,   57,   57,   84,
   55,   59,   59,   59,   59,  112,  113,  114,   60,   57,
   57,   57,   55,   57,  115,  116,    1,    2,    3,  100,
   27,   89,  101,  108,   27,   27,  110,   27,   27,   42,
   27,   27,   27,   43,   44,   59,   45,   46,  121,   47,
   48,   49,  123,   10,   57,  126,   90,  111,  124,  125,
   10,   14,   16,   29,   27,  133,   16,   16,  127,   16,
   16,  129,   16,   16,   16,   57,    2,   55,   55,   96,
   97,   55,   55,   55,   55,   55,   39,   55,   13,    9,
   57,   39,   92,   55,   25,   11,   59,   91,   64,   55,
   57,   50,   93,   55,   65,   50,   50,   70,   50,   13,
   26,   50,   35,   43,   28,   41,  122,   46,  130,   47,
   48,   49,   43,   50,   79,  132,   46,    0,   47,   48,
   49,   43,    0,   55,    0,   46,    0,   47,   48,   49,
   43,    0,    0,    0,   46,    0,   47,   48,   49,   38,
   38,   38,   38,    0,    0,   65,    0,   50,   61,   61,
   61,    1,    2,    3,    0,    0,    4,    0,    0,   83,
    0,   85,    0,   86,   87,   88,    0,    0,    0,    0,
    0,    0,    0,    0,   60,   60,   60,  102,    0,    0,
    0,  106,    0,  107,    0,  109,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,   59,   59,    0,    0,    0,    0,    0,    0,    0,
   57,   57,
};
static const short yycheck[] = {                         33,
   60,   91,   62,   91,   91,   91,   40,  125,   33,   43,
  123,   45,  125,  271,   40,   40,   41,   33,   43,  123,
   45,  264,  265,  266,   40,   59,   33,   43,   40,   45,
   33,   41,   93,   40,   44,   38,   43,   43,   45,   45,
   52,   40,  123,  108,   30,   44,   32,   37,   59,   59,
  271,   41,   42,   43,   44,   45,   37,   47,  123,   41,
   41,   42,   43,   44,   45,   44,   47,   41,  133,   59,
   60,   61,   62,   96,   97,   98,   99,   93,   59,   60,
   61,   62,   37,   93,   44,  123,   41,   42,   43,   44,
   45,  267,   47,   40,   40,  271,  108,  273,  274,  275,
   40,   91,   61,   93,   59,   60,   61,   62,  125,   37,
   59,  123,   93,   41,   42,   43,   44,   45,   37,   47,
   91,  133,   41,   42,   43,   44,   45,   40,   47,   91,
   40,   59,   60,   61,   62,   91,   92,   93,   93,   52,
   59,   60,   52,   62,   94,   95,  264,  265,  266,   61,
  263,   59,  261,   41,  267,  268,   41,  270,  271,  263,
  273,  274,  275,  267,  268,   93,  270,  271,   61,  273,
  274,  275,   41,    0,   93,   59,  262,   90,   44,   41,
    7,  271,  263,  271,  271,  258,  267,  268,   93,  270,
  271,   93,  273,  274,  275,  108,    0,   37,  108,  259,
  260,   41,   42,   43,   44,   45,   33,   47,   59,   41,
  123,   38,   37,  123,  125,   41,   43,   42,   91,   59,
  133,   37,   47,  133,   91,   41,   42,   41,   44,    7,
   18,   47,   31,  267,   19,   38,  101,  271,  121,  273,
  274,  275,  267,   59,   52,  124,  271,   -1,  273,  274,
  275,  267,   -1,   93,   -1,  271,   -1,  273,  274,  275,
  267,   -1,   -1,   -1,  271,   -1,  273,  274,  275,  259,
  260,  261,  262,   -1,   -1,   44,   -1,   93,  259,  260,
  261,  264,  265,  266,   -1,   -1,  269,   -1,   -1,   58,
   -1,   60,   -1,   62,   63,   64,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,  259,  260,  261,   76,   -1,   -1,
   -1,   80,   -1,   82,   -1,   84,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,  259,  260,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
  259,  260,
};
#define YYFINAL 5
#ifndef YYDEBUG
#define YYDEBUG 0
#endif
#define YYMAXTOKEN 275
#define YYTRANSLATE(a) ((a) > YYMAXTOKEN ? (YYMAXTOKEN + 1) : (a))
#if YYDEBUG
static const char *yyname[] = {

"end-of-file",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
"'!'",0,0,0,"'%'",0,0,"'('","')'","'*'","'+'","','","'-'",0,"'/'",0,0,0,0,0,0,0,
0,0,0,0,"';'","'<'","'='","'>'",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,"'['",0,"']'",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
"'{'",0,"'}'",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"IF_ONLY","TK_ELSE","TK_LE","TK_GE",
"TK_AND","TK_OR","TK_IF","TK_CHAR","TK_FLOAT","TK_INT","TK_NEW","TK_RETURN",
"TK_VOID","TK_WHILE","TK_ID","TK_UNKNOWN","TK_DOUBLE_NUMBER","TK_LONG_NUMBER",
"TK_STRING","illegal-symbol",
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
"command : TK_IF '(' exp ')' command",
"command : TK_IF '(' exp ')' command TK_ELSE command",
"command : TK_WHILE '(' exp ')' command",
"command : commandbasic",
"commandbasic : var '=' exp ';'",
"commandbasic : TK_RETURN ';'",
"commandbasic : TK_RETURN exp ';'",
"commandbasic : call ';'",
"commandbasic : block",
"numeral : TK_DOUBLE_NUMBER",
"numeral : TK_LONG_NUMBER",
"var : TK_ID",
"var : expothers '[' exp ']'",
"expunary : '+' exp",
"expunary : '-' exp",
"expunary : '!' exp",
"expunary : expmult",
"expmult : expadd '*' expadd",
"expmult : expadd '%' expadd",
"expmult : expadd '/' expadd",
"expmult : expadd",
"expadd : expcomp '+' expcomp",
"expadd : expcomp '-' expcomp",
"expadd : expcomp",
"expcomp : expequal '>' expequal",
"expcomp : expequal '<' expequal",
"expcomp : expequal TK_LE expequal",
"expcomp : expequal TK_GE expequal",
"expcomp : expequal",
"expequal : expand '=' '=' expand",
"expequal : expand",
"expand : expor TK_AND expor",
"expand : expor",
"expor : expothers TK_OR expothers",
"expor : expothers",
"expothers : numeral",
"expothers : TK_STRING",
"expothers : var",
"expothers : call",
"expothers : TK_NEW type '[' exp ']'",
"exp : '(' exp ')'",
"exp : expunary",
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
#line 177 "monga.y"

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
#line 399 "y.tab.c"

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
#line 45 "monga.y"
	{}
break;
case 2:
#line 48 "monga.y"
	{}
break;
case 3:
#line 49 "monga.y"
	{}
break;
case 4:
#line 52 "monga.y"
	{}
break;
case 5:
#line 53 "monga.y"
	{}
break;
case 6:
#line 56 "monga.y"
	{}
break;
case 7:
#line 57 "monga.y"
	{}
break;
case 9:
#line 61 "monga.y"
	{}
break;
case 13:
#line 71 "monga.y"
	{}
break;
case 14:
#line 72 "monga.y"
	{}
break;
case 15:
#line 75 "monga.y"
	{}
break;
case 16:
#line 78 "monga.y"
	{}
break;
case 17:
#line 79 "monga.y"
	{}
break;
case 18:
#line 82 "monga.y"
	{}
break;
case 19:
#line 83 "monga.y"
	{}
break;
case 20:
#line 86 "monga.y"
	{}
break;
case 21:
#line 87 "monga.y"
	{}
break;
case 22:
#line 88 "monga.y"
	{}
break;
#line 673 "y.tab.c"
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
