all: main.pdf

main.pdf: main.tex styles/document.tex frontmatter/cover.tex chapters/*.tex
	latexmk -pdf -synctex=1 -interaction=nonstopmode main.tex

clean:
	latexmk -C main.tex
