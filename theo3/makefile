all: comp move

comp: vorlesungs_mitschrift_theo.tex
		pdflatex vorlesungs_mitschrift_theo.tex

move: vorlesungs_mitschrift_theo.pdf
		mv vorlesungs_mitschrift_theo.pdf ../pdf

clean:
		rm *.log
		rm *.out
		rm *.aux
		rm *.toc

.PHONY: all comp 
.SILENT: comp clean
