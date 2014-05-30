%{
#include "y.tab.h"
#include <math.h>
#define YYSTYPE int
extern YYSTYPE yylval;
%}
%%
username        printf("hello");
"zap me"        printf("zapping");
[0-9]+          {yylval=atoi(yytext); return NUMBER;}
\+              {return PLUS;}
\*              {return MULT;}
\n              {return NEWLINE;}
%%
