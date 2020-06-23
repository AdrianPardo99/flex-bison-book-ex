source=lex.yy.c
flex=gram
extend=.l
comp:	${flex}${extend}
	flex ${flex}${extend}
	gcc ${source} -lfl -o ${flex}
