objects = main presentation

all: $(objects)

$(objects):
	lualatex --shell-escape $@
	biber $@
	lualatex --shell-escape $@
	lualatex --shell-escape $@

clean:
	$(RM) -f main.pdf presentation.pdf
	$(RM) -f *.log *.aux *.toc *.bbl *.lot *.lof *.blg *.bcf *.xml *.wc *.acr *.nav *.snm *.out

