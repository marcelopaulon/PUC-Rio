#if !defined(LEXYY_H)
#define LEXYY_H

#define DEBUG 0

extern int yylex(void);

extern FILE *yyin, *yyout;

typedef enum mongaSymbol {
  TK_SEMICOLON = 256,
  TK_COMMA,
  TK_OPEN_KEY,
  TK_CLOSE_KEY,
  TK_OPEN_PARENTHESIS,
  TK_CLOSE_PARENTHESIS,
  TK_OPEN_BRACKET,
  TK_CLOSE_BRACKET,
  TK_EQUALS,
  TK_PLUS,
  TK_MINUS,
  TK_ASTERISK,
  TK_SLASH,
  TK_LE,
  TK_LT,
  TK_GE,
  TK_GT,
  TK_AND,
  TK_OR,
  TK_IF,
  TK_ELSE,
  TK_CHAR,
  TK_FLOAT,
  TK_INT,
  TK_NEW,
  TK_RETURN,
  TK_VOID,
  TK_WHILE,
  TK_ID,
  TK_UNKNOWN,
  TK_DOUBLE_NUMBER,
  TK_LONG_NUMBER,
  TK_STRING
} MongaSymbol;

typedef union mongaData {
  unsigned long long int l;
  double d;
  char *c;
} MongaData;

typedef struct mongaToken {
  MongaSymbol symbol;
  MongaData data;
  int line;
} MongaToken;

#endif
