#if !defined(LEXYY_H)
#define LEXYY_H

#define DEBUG 0

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

#endif
