pdf : MIP_on_arbitrary_mesh.tex\
	introduction.tex\
	mip.tex\
	algebraic_multigrid.tex\
	biblio.bib
	pdflatex MIP_on_arbitrary_mesh
	bibtex MIP_on_arbitrary_mesh
	pdflatex MIP_on_arbitrary_mesh
	pdflatex MIP_on_arbitrary_mesh

.PHONY : clean

clean : 
	-rm main.pdf
	-rm *.log *.aux *.bbl *.blg
