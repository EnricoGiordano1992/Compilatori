/* file.flex */
/*//////////////////////////////////////////////
// definition section */
%{
%}
%option main
/*//////////////////////////////////////////////
// rules section */
%%
[ ] ;
"ciao" ECHO; yymore();
. { printf("Riconoscimento fallito.\n") ; exit(1) ;}
%%
/*//////////////////////////////////////////////
// C code section */