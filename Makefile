all:
	lualatex --shell-escape main
	biber main
	lualatex --shell-escape main
	lualatex --shell-escape main

presentation:
	lualatex --shell-escape presentation
	biber presentation
	lualatex --shell-escape presentation
	lualatex --shell-escape presentation

clean:
	$(RM) -f main.pdf presentation.pdf
	$(RM) -f *.log *.aux *.toc *.bbl *.lot *.lof *.blg *.bcf *.xml *.wcdetail *.wc *.acr *.nav *.snm *.out

