DESTDIR=
DOCSDIR=$(DESTDIR)/usr/share/doc
PACKAGE=cila-libro
VERSION=1.1
DISTDIR=$(PACKAGE)-$(VERSION)

LATEX = latex
DVIPS = dvips
NAME = Libro_CILA

.PHONY: clean
JPGS=$(wildcard imagenes/*.jpg)
EPSS=$(JPGS:.jpg=.eps)

all: $(EPSS) 

%.eps: %.jpg
	jpeg2ps -o $@ $<

clean:
	rm -f *.dvi *.ps *.log *.aux $(EPSS)

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

all: $(FILES) $(EPSS) $(EJEMPLOS)
	latex book
	makeindex book.idx
	latex book
	bibtex book
	latex book
	dvips -o $(NAME).ps book.dvi

html: $(FILES)
	latex2html main


dist: $(FILES) $(IMAGES) $(EJEMPLOS)
	mkdir $(DISTDIR)
	cp Makefile LEEME *.tex *.sty *.bib $(DISTDIR)
	cp -r imagenes $(DISTDIR)
	cp -r ejemplos $(DISTDIR)
	cd $(DISTDIR); make clean; cd ..
	tar cfz $(DISTDIR).tar.gz $(DISTDIR)
	rm -rf $(DISTDIR)

install: $(FILES) $(IMAGES) $(EJEMPLOS) $(NAME).ps
	install -m 755 -d $(DOCSDIR)/$(PACKAGE)
	install -m 755 -d $(DOCSDIR)/$(PACKAGE)/ejemplos
	install -m 644 $(NAME).ps $(DOCSDIR)/$(PACKAGE)
	mv -fv ejemplos/CVS ejemplos/.CVS
	install -m 644 ejemplos/* $(DOCSDIR)/$(PACKAGE)/ejemplos
	mv -fv ejemplos/.CVS ejemplos/CVS

clean:
	rm -f *~ *.aux *.log *.dvi *.idx *.ilg *.ind *.toc *.bbl \
	      *.blg *.lot *.lof *.lde *.exa
	rm -rf main
	rm -f $(EPSS)
