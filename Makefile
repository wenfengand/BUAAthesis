beamer1:
	xelatex -output-directory=./build beamer1.tex
bachelor:
	xelatex sample-bachelor.tex
	-bibtex  sample-bachelor.aux
	xelatex sample-bachelor.tex
	xelatex sample-bachelor.tex
master:
	xelatex sample-master.tex
	-bibtex  sample-master.aux
	xelatex sample-master.tex
	xelatex sample-master.tex
clean:
	find . -name '*.aux' -print0 | xargs -0 rm -rf
	find ./build -name '*.aux' -print0 | xargs -0 rm -rf
	rm -rf *.lof *.log *.lot *.out *.toc *.bbl *.blg *.thm
	cd ./build && rm -rf *.lof *.log *.lot *.out *.toc *.bbl *.blg *.thm *.nav *.snm
depclean: clean
	rm -rf *.pdf
