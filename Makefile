LATEX = latex

DVIPS = dvips

NAME = Libro_CILA

FILES = book.tex			\
		main.tex			\
		cila.sty			\
		biblio.bib			\
		portada.tex			\
		presentacion.tex	\
		contrib.tex			\
		introduccion.tex	\
		comandos.tex		\
		xwindow.tex			\
		editores.tex		\
		documentacion.tex	\
		administracion.tex	\
		internet.tex		\
		graficos.tex		\
		octave.tex			\
		gnuplot.tex			\
		r.tex				\
		openoffice.tex		\
		html.tex			\
		php.tex				\
		lyx.tex				\
		latex.tex			\
		freepascal.tex		\
		gnuc.tex			\
		gnufortran.tex		\
		java.tex			\
		bash.tex			\
		perl.tex			\
		python.tex			\
		ides.tex			\
		recursos.tex		\
		fdles.tex			

IMAGES = $(wilcard imagenes/*.eps)

EXAMPLES = 	ejemplos/HolaMundo.for 		\
			ejemplos/HolaMundo.java		\
			ejemplos/HolaMundo.pas		\
			ejemplos/HolaMundo2.for		\
			ejemplos/HolaMundo2.html	\
			ejemplos/HolaMundo2.java	\
			ejemplos/HolaMundo2.pas		\
			ejemplos/Makefile			\
			ejemplos/Saludos.for		\
			ejemplos/ejemplo.tex		\
			ejemplos/gnuplot-fit.dat	\
			ejemplos/gnuplot-fit.demo	\
			ejemplos/gnuplot.dat		\
			ejemplos/gnuplot.demo		\
			ejemplos/holafunc.c			\
			ejemplos/holafunc.h			\
			ejemplos/holafunc3.c		\
			ejemplos/holamundo.c		\
			ejemplos/main.c				\
			ejemplos/main.cc			\
			ejemplos/octave.m			\
			ejemplos/saludo.cc			\
			ejemplos/saludo.h			\
			ejemplos/saludos.pas

		
%.dvi: %.tex
	$(LATEX) $<

%.ps: %.dvi
	$(DVIPS) -o $@ $<

%.pdf: %.ps
	ps2pdf $@

all: $(FILES) $(IMAGES) $(EJEMPLOS)
	latex book
	makeindex book.idx
	bibtex book
	latex book
	dvips -o $(NAME).ps book.dvi

html: $(FILES)
	latex2html main


dist: $(FILES) $(IMAGES) $(EJEMPLOS)
	mkdir $(NAME)
	cp Makefile LEEME *.tex *.sty *.bib $(NAME)
	cp -r imagenes $(NAME)
	cp -r ejemplos $(NAME)
	cd $(NAME); make clean; cd ..
	tar cfz $(NAME).tar.gz $(NAME)
	rm -f $(NAME)

clean:
	rm -f *~ *.aux *.log *.dvi *.idx *.ilg *.ind *.toc *.bbl \
	      *.blg *.lot *.lof *.lde
	rm -rf main

