source=lex.yy.c
flex=.l
out=scanner
comp: ${out}${flex}
	flex ${out}${flex}
	gcc ${source} -lfl -o ${out}

