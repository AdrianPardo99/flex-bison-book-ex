flex=.l
bison=.y
fileTab=.tab
fileC=.c
out=calcScanner
comp: ${out}${flex}
	flex -o ${out}${fileC} ${out}${flex}
	bison -d ${out}${bison}
	gcc -o ${out} ${out}${fileTab}${fileC} ${out}${fileC} -lfl
