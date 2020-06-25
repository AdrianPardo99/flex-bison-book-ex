%{
int print=0,scan=0,cif=0,celse=0,cfor=0,creturn=0,word=0;
%}
%%
"printf"    {print++;word++;}
"scanf"     {scan++;word++;}
"if"        {cif++;word++;}
"else"      {celse++;word++;}
"for"       {cfor++;word++;}
"return"    {creturn++;word++;}
[a-zA-Z]+   {word++;}
\n          {}
.           {}
%%

int main(int argc,char **argv){
  yylex();
  printf("Total de palabras: %d\nprintf: %d\t%f\%\n"
    "scanf: %d\t%f\%\nif: %d\t%f\%\nelse: %d\t%f\%\n"
    "for: %d\t%f\%\nreturn: %d\t%f\%\n",
    word,print,(float)print/word,scan,(float)scan/word,cif,(float)cif/word,
    celse,(float)celse/word,cfor,(float)cfor/word,creturn,(float)creturn/word);
  return 0;
}
