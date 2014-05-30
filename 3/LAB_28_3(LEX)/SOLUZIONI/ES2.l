%{
    int c=0, l=0, b=0;
%}

eol  \n	

%%
{eol}  {l++;}
.      {c++;}
%%
main()
{
	yylex();
	b = c+2;
	while(b >= 0)
	{
		printf("%c", yytext[b]);
		b--;
	}
	
	printf("\nrighe: %d\ncaratteri: %d\n", l, c);
}
