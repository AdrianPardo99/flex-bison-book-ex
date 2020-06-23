source=lex.yy.c
flex=wcFlex.l
out=wcFlex
comp: ${source}
	flex ${flex}
	gcc ${source} -lfl -o ${out}
