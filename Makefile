test.pdf: test.tex nrepport.cls
	latexmk test
	
install:
	./install.sh
