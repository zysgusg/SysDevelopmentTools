paper.pdf: paper.tex plot-data.png
	pdflatex paper.tex

plot-%.png: %.dat plot.py
	python plot.py -i $*.dat -o $@
.PHONY: clean
clean:
	git ls-files -o -i --exclude-standard | xargs rm -f
