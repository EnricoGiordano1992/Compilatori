%{
%}

come "come stai?"

%%
ciao	  	{printf(" ciao!");}
{come}    	{printf(" bene grazie! E tu?\n");}
vo*	 	{printf(" anche a me piacerebbe...\n");}
far*	 	{printf(" io lo farei\n");}
amo*		 {printf(" sono un PC, non ho sentimenti...\n");}
odio*		 {printf(" non so cosa sia l'odio\n");}	
anche*		 {printf(" bene dai...");}
cosa*		 {printf(" eh sapessi...");}
dai*		 {printf(" non te lo dico");}
favore		 {printf(" va bene!");}
sei		 {printf(" assolutamente si");}
una		 {printf(" non solo...");}
hai		 {printf(" probabilmente...perché ti interessa?");}
sent		 {printf(" non riesco a sentire mi dispiace...");}
.		{;}

%%
main()
{
	printf("********* INIZIA UNA CONVERSAZIONE ***********\n");
	yylex();
}
