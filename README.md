# flex-bison-book-ex

Pequeños programas donde se puede trabajar con herramientas de análisis léxico (FLEX), y análisis sintáctico (Bison), los cuales son herramientas del proyecto GNU/Linux los cuales funcionan para la creación de otras mismas herramientas como compiladores, micro-programas como las herramientas wc, grep, entre otras los cuales utilizan una sintaxis con expresiones regulares, en conjunto de una combinación de la sintaxis del lenguaje C, los cuales facilitan la creación de sus archivos y de realizar pruebas, de una creación de programas con parser que permitan hacer algo como ls, nmap que leen banderas en cualquier posición.

__Sintaxis inicial FLEX__

```
%{
Código de variables, bibliotecas y algunas definiciones escritas o ejemplificadas de lenguaje C
Bibliotecas proporcionadas por Bison
Tokens para hacer uso de los mismos en el lado de trabajar con un analizador sintactico

%}

%%

Expresiones Regulares (Regex) que permiten crear o dar un comportamiento especifico del analizador lexico     {Instrucciones y trabajo con sintaxis de lenguaje C}

%%

Escritura de función main o de funciones externas para trabajar.

```

__Sintaxis inicial Bison__

```
%{
  /*Bibliotecas, definicion de funciones*/
  int yylex();
  void yyerror(char *);
%}

/* Apartado de tokens */
%token TOKEN_NAME

%%
/*Reglas sintacticas y semanticas*/

ReglaProductora: Reglas | Regla {/*Accion semantica de atributos sintetizados*/};

%%
```
