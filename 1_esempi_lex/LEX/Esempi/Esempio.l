%{
#include <stdio.h>
%}

%%
ACCENDI     {printf("Ho ricevuto il comando accendi \n");}
SPEGNI     {printf("Ho ricevuto il comando spegni \n");}

[ \t]+  /* ignora spazio bianco */
#.*             /* ignora commenti */
\n              /* ignora gli a capo */
%%
