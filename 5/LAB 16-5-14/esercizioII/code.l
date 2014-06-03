%{
   #include "y.tab.h"
   extern char yyval;
%}

BRANCH_A  "{"
BRANCH_C  "}"
TYPE    type
ID id

EPS eps

P_VIRG ";"

%%
{BRANCH_A} 	{yylval.sym=(char)yytext[0]; return BRANCH_A;}
{BRANCH_C} 	{yylval.sym=(char)yytext[0]; return BRANCH_C;}
{ID}       	{yylval.sym=(char)yytext[0]; return ID;}
{EPS}       	{yylval.sym=(char)yytext[0]; return EPS;}
{P_VIRG}       	{yylval.sym=(char)yytext[0]; return P_VIRG;}
{TYPE}       	{yylval.sym=(char)yytext[0]; return TYPE;}


\n {return 0;}
.  {return yytext[0];}

%%
