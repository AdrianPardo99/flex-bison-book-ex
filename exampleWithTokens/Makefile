flex=.l
bison=.y
fileTab=.tab
fileC=.c
out=calcScanner
outWOB=calcScannerWithoutBison
comp: ${out}${flex}
	flex -o ${out}${fileC} ${out}${flex}
	bison -d ${out}${bison}
	gcc -o ${out} ${out}${fileTab}${fileC} ${out}${fileC} -lfl
withoutBison:
	flex -o ${outWOB}${fileC} ${outWOB}${flex}
	gcc -o ${outWOB} ${outWOB}${fileC} -lfl
