source=lex.yy.c
flex=wcFlex.l
out=wcFlex
comp: ${flex}
	flex ${flex}
	gcc ${source} -lfl -o ${out}
