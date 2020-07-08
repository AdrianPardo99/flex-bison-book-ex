%{
  #include <stdio.h>
  int yylex();
  void yyerror(char *s);
%}

/* Token */
%token NUMBER
%token ADD SUB MUL DIV ABS
%token EOL

%%

calclist: /* Nada */
  | calclist exp EOL {printf(" = %d\n",$2);}
  ;

exp: factor
  | exp ADD factor    {$$=$1+$3;}/*$$ -> En la pila de resultado; $# -> acceso a los datos del primer termino de flex */
  | exp SUB factor    {$$=$1-$3;}
  ;

factor: term
  | factor MUL term   {$$=$1*$3;}
  | factor DIV term   {$$=$1/$3;}
  ;

term: NUMBER
  | ABS term          {$$= $2>=0 ? $2: -$2;}
  ;
%%

int main(int argc, char **argv){
  yyparse();
  return 0;
}

void yyerror(char *s){
  fprintf(stderr,"Error: %s\n",s);
}
