/* Scanner simple que reconoce los tokens de operaciones */

%%
"+"     {printf("PLUS\n");}
"-"     {printf("MINUS\n");}
"*"     {printf("TIMES\n");}
"/"     {printf("DIVIDE\n");}
"|"     {printf("ABS\n");}
[0-9]+  {printf("NUMBER: %s\n",yytext);}
\n      {printf("NEWLINE\n");}
[ \t]   {}
.       {printf("Mystery character %s\n",yytext);}
%%
