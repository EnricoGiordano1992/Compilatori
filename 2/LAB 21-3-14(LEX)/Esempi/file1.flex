%option main
%%
[ ] ;
username { printf("%s", getlogin() );}
. { printf("Riconoscimento fallito.\n");}
%%