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
\+			return PLUS;
\-			return MIN;
\*			return MUL;
\/			return DIV;
\<			return MINMIN;
\>			return MAXMAX;
;			return P_VIRG;
\(			return OPEN;
\)			return CLOSE;
\=			return TAKE;
\==			return EQ;

[0-9]*                  return NUMBER;
[a-z]*                  return ID;
[A-Z]*                  return CONST;
%%

