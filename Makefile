pdf : MIP_on_arbitrary_mesh.tex\
	introduction.tex\
	transport.tex\
	mip.tex\
	algebraic_multigrid.tex\
	conclusions.tex\
	appendix.tex\
	biblio.bib
	pdflatex MIP_on_arbitrary_mesh
	bibtex MIP_on_arbitrary_mesh
	pdflatex MIP_on_arbitrary_mesh
	pdflatex MIP_on_arbitrary_mesh

.PHONY : clean

clean : 
	-rm MIP_on_arbitrary_mesh.pdf
	-rm *.log *.aux *.bbl *.blg
