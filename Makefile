PAPER=main

.PHONY: clean

all:
	xelatex -shell-escape $(PAPER)
	xelatex -shell-escape $(PAPER)
	xelatex -shell-escape $(PAPER)
	
clean:
ifeq ($(OS), Windows_NT) # is Windows_NT on XP, 2000, 7, Vista, 10...
	ps clean.ps1
else
	find $(dirname "$0") -regextype posix-extended  -regex ".*\.(aux|log|out|thm|toc|bbl|blg|fdb_latexmk|fls|gz|snm|nav|vrb)" -delete
	rm _* -rf
endif