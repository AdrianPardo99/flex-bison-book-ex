%{
  #include "calcScanner.tab.h"
%}

%%

"+"     {return ADD;}
"-"     {return SUB;}
"*"     {return MUL;}
"/"     {return DIV;}
"|"     {return ABS;}
[0-9]+  {yylval=atoi(yytext);return NUMBER;}
\n      {return EOL;}
[ \t]   {/* Ignora los espacios en blanco */}
.       {printf("Caracter misterioso: %c\n",*yytext);}

%%
