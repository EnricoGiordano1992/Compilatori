%{
#include <stdio.h>
#include "y.tab.h"
%}

%%
char		            return CHAR;
int		                return INT;
float                   return FLOAT;
double                  return DOUBLE;
boolean                 return BOOL;
if                      return IF;
while                   return WHILE;
return                  return RET;

[0-9]*                  yylval=atoi(yytext); return NUMBER;
[a-z]*                  return ID;
[A-Z]*                  return CONST;
%%

