lex $1;
NOME=`echo $1 | cut -d . -f1`
NOME+=".c"
mv lex.yy.c $NOME;
OUTPUT=`echo $NOME | cut -d . -f1`
gcc $NOME -o $OUTPUT -ll;
