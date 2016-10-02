/* A Bison parser, made by GNU Bison 3.0.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2013 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    IF_ONLY = 258,
    TK_ELSE = 259,
    TK_LE = 260,
    TK_GE = 261,
    TK_AND = 262,
    TK_OR = 263,
    TK_IF = 264,
    TK_CHAR = 265,
    TK_FLOAT = 266,
    TK_INT = 267,
    TK_NEW = 268,
    TK_RETURN = 269,
    TK_VOID = 270,
    TK_WHILE = 271,
    TK_ID = 272,
    TK_UNKNOWN = 273,
    TK_DOUBLE_NUMBER = 274,
    TK_LONG_NUMBER = 275,
    TK_STRING = 276,
    TK_EQ = 277
  };
#endif
/* Tokens.  */
#define IF_ONLY 258
#define TK_ELSE 259
#define TK_LE 260
#define TK_GE 261
#define TK_AND 262
#define TK_OR 263
#define TK_IF 264
#define TK_CHAR 265
#define TK_FLOAT 266
#define TK_INT 267
#define TK_NEW 268
#define TK_RETURN 269
#define TK_VOID 270
#define TK_WHILE 271
#define TK_ID 272
#define TK_UNKNOWN 273
#define TK_DOUBLE_NUMBER 274
#define TK_LONG_NUMBER 275
#define TK_STRING 276
#define TK_EQ 277

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE YYSTYPE;
union YYSTYPE
{
#line 52 "../monga.y" /* yacc.c:1909  */

    Exp *exp;
    Var *var;
    int i;
    double f;
    char *s;
    List *list;
    CmdBasic *cmdbasic;
    CmdCall *cmdcall;
    ExpList *explist;
    Type *type;

#line 111 "y.tab.h" /* yacc.c:1909  */
};
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
