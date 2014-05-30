%{
#include <stdio.h>
#include <string.h>

int temp;

%}

%token NUMBER TOKHEAT STATE TOKTARGET TOKTEMPERATURE READ

%%

commands:
	| commands command
	;


command: heat_switch
	| target_set
	| read
	;

heat_switch: TOKHEAT STATE 
	{
		if($2)
			printf("\tHeat turned on\n");
		else
			printf("\tHeat turned off\n");
	}
	;

target_set: TOKTARGET TOKTEMPERATURE NUMBER
	{
		printf("\tTemperature set to %d\n",$3);
		temp = $3;
	}
	;

read: READ NUMBER
	{
		printf("\tLettura temperatura: %d\n", $2);

		if($2 == temp)
			printf("\tTEMPERATURA RAGGIUNTA\n");
	}
	;
%%

int yyerror(const char *str)
{
	fprintf(stderr,"error: %s\n",str);
}

int yywrap()
{
	return 1;
}

int main()
{
	yyparse();
}

