/* file.flex */
/*//////////////////////////////////////////////
// definition section */
%{
#define NPARI 1001
#define NDISPARI 1002
#define SALUTO 1010
%}
PARI [1-9]*[02468]
DISPARI [1-9]*[13579]
%option main
/*//////////////////////////////////////////////
// rules section */
%%
[ ] ;
{PARI} { printf("Trovato pari.\n") ; return(NPARI);}
{DISPARI} { printf("Trovato dispari.\n") ; return(NDISPARI);}
"CIAO"|"AOO" { printf("Trovato saluto.\n"); return(SALUTO);}
. { printf("Riconoscimento fallito.\n") ; exit(1) ;}
%%
/*//////////////////////////////////////////////
// C code section */