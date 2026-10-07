# files with this suffix will be deleted on make clean
EXTENSIONS:=aux bbl blg cut dvi log nav out pdfsync ps snm synctex.gz tdo toc vrb

default: pdf

pdf: 
	latexmk -pdf algebra.tex
	latexmk -pdf algebra.tex

clean:
	latexmk -c algebra.tex
	@for i in $(EXTENSIONS); \
	do \
		for file in `find . -name "*.$$i"`; do rm $$file; done; \
	done
