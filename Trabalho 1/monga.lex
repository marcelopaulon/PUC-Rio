/* scanner for the Monga language */
/* Marcelo Paulon - 1411029 / Renan da Fonte - 1412122 */

%option noyywrap
%option nounput
%option noinput

%{
/* need this for the call to strtod/strtoul/strlen/strcpy below */
#include <string.h>
#include <ctype.h>
#include "lex.yy.h"

extern MongaToken token;

static int curLine = 1;

MongaData getSymbolData(MongaSymbol symbol, char *data)
{
  MongaData mongaData;
  char *idStr;
  int base;
  
  switch(symbol)
  {
    case TK_ID:
    case TK_STRING:
      idStr = malloc((strlen(data) + 1) * sizeof(char));
      if(idStr == NULL)
      {
        printf("Unable to allocate memory for char buffer. Stopping.");
        exit(-1);
      }
      strcpy(idStr, data);
      mongaData.c = idStr;
      break;
    case TK_DOUBLE_NUMBER:
      mongaData.d = strtod(data, NULL);
      break;
    case TK_LONG_NUMBER:
      base = 10;
      if(data[0] == '0' && (data[1] == 'x' || data[1] == 'X')) base = 16;
      mongaData.l = strtoull(data, NULL, base);
      break;
    default:
      break;
  }

  return mongaData;
}

static char *stringBuffer;
static int strBufLen = 0;
static int strBufCount = 0;

void beginBuffer()
{
  stringBuffer = (char *) malloc(1024 * sizeof(char));
  if(!stringBuffer)
  {
    printf("Unable to allocate memory for string buffer. Exiting.");
    exit(-1);
  }

  strBufCount = 0;
  strBufLen = 1024;
}

void increaseBuffer()
{
  strBufLen += 1024;
  stringBuffer = (char *) realloc(stringBuffer, strBufLen * sizeof(char));
  if(!stringBuffer)
  {
    printf("Unable to reallocate memory for string buffer. Exiting.");
    exit(-1);
  }
}

void addToBuffer(char *text)
{
  int textLen = strlen(text);
  if(strBufCount + textLen + 1 > strBufLen)
  {
    increaseBuffer();
  }

  strcat(stringBuffer, text);

  strBufCount += textLen;
}

int addSymbol(int symbol, char *data)
{
  token.symbol = symbol;
  token.data = getSymbolData(symbol, data);
  token.line = curLine;
  return symbol;
}
%}

%x COMMENT

%x STRING

%%

"/*"			BEGIN(COMMENT);

<COMMENT>{
	"*/"		BEGIN(0);
	"\n"            curLine++;
	<<EOF>>		{ printf("Non-closed comment on line %d. Exiting.\n", curLine); exit(-1); }
	.		{}
}

"\""			{ beginBuffer(); BEGIN(STRING); }

<STRING>{
        \n		{ printf("Non-closed string on line %d. Exiting.\n", curLine); exit(-1); }
	<<EOF>>		{ printf("Non-closed string on line %d. Exiting.\n", curLine); exit(-1); }
	\\"\""		{ addToBuffer("\""); }
	\\"n"		{ addToBuffer("\n"); }
	\\"t"		{ addToBuffer("\t"); }
	\\\\		{ addToBuffer("\\"); }
	"\""		{ BEGIN(0); addToBuffer("\0"); return addSymbol(TK_STRING, stringBuffer); }
	\\.		{ printf("Invalid escape character on line %d. Exiting.\n", curLine); exit(-1); }		
	.		{ addToBuffer(yytext); }
}

"<="			return addSymbol(TK_LE, yytext);
">="			return addSymbol(TK_GE, yytext);
"&&"			return addSymbol(TK_AND, yytext);
"||"			return addSymbol(TK_OR, yytext);

"if"			return addSymbol(TK_IF, yytext);
"else"			return addSymbol(TK_ELSE, yytext);

"char"			return addSymbol(TK_CHAR, yytext);
"float"			return addSymbol(TK_FLOAT, yytext);
"int"			return addSymbol(TK_INT, yytext);
"new"			return addSymbol(TK_NEW, yytext);
"return"		return addSymbol(TK_RETURN, yytext);
"void"			return addSymbol(TK_VOID, yytext);
"while"			return addSymbol(TK_WHILE, yytext);

0[xX][0-9a-fA-F]+       return addSymbol(TK_LONG_NUMBER, yytext);

[0-9]+ 			return addSymbol(TK_LONG_NUMBER, yytext);

0[xX](([0-9a-fA-F]+)|([0-9a-fA-F]+"."[0-9a-fA-F]+))([pP][+\-]?[0-9]+)?         return addSymbol(TK_DOUBLE_NUMBER, yytext);

[0-9]+"."[0-9]*([eE][+\-]?[0-9]+)?         return addSymbol(TK_DOUBLE_NUMBER, yytext);

[A-Za-z_][A-Za-z0-9_]*  return addSymbol(TK_ID, yytext);

[ \t]+                  /* eat up whitespace */

\n			curLine++;

.           		return addSymbol(yytext[0], yytext);

%%

