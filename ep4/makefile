all: comp move

comp: vorlesungs_mitschrift_ep4.tex
		pdflatex vorlesungs_mitschrift_ep4.tex

move: vorlesungs_mitschrift_ep4.pdf
		mv vorlesungs_mitschrift_ep4.pdf ../pdf

clean:
		-rm *.log
		-rm *.out
		-rm *.aux
		-rm *.toc
		-rm *.lof
		-rm *.lot

	
.PHONY: all comp 
.SILENT: comp clean
