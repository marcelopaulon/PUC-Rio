#if !defined(LEXYY_H)
#define LEXYY_H

#define DEBUG 0

extern int yylex(void);

typedef union mongaData {
  unsigned long long int l;
  double d;
  char *c;
} MongaData;

typedef struct mongaToken {
  int symbol;
  MongaData data;
  int line;
} MongaToken;

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
    TK_STRING = 276
  };

#endif
