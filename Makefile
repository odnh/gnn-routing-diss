all: main.pdf
main.pdf:
	lualatex --shell-escape main
	biber main
	lualatex --shell-escape main
	lualatex --shell-escape main

clean:
	$(RM) -f main.pdf
	$(RM) -f *.log *.aux *.toc *.bbl *.lot *.lof *.blg *.bcf *.xml *.wcdetail

