DOCSDIR=$(DESTDIR)/usr/share/doc
PACKAGE=cila-libro
VERSION=1.1
DISTDIR=$(PACKAGE)-$(VERSION)

LATEX = latex
DVIPS = dvips
NAME = Libro_CILA

.PHONY: clean
JPGS = $(wildcard imagenes/*.jpg)
EPSS = $(JPGS:.jpg=.eps)

TEXS = $(wildcard *.tex)

FILES = $(TEXS) cila.sty biblio.bib

IMAGES = $(wilcard imagenes/*.eps)

EXAMPLES = 	$(wilcard ejemplos/*.*)

all: $(EPSS) 

%.eps: %.jpg
	jpeg2ps -o $@ $<
		
%.dvi: %.tex
	$(LATEX) $<

%.ps: %.dvi
	$(DVIPS) -o $@ $<

%.pdf: %.ps
	ps2pdf $@

CJPGS = $(wildcard cubierta/*.jpg)
CEPSS = $(CJPGS:.jpg=.eps)

cubierta: cubierta.tex $(CEPSS)
	latex cubierta
	dvips -o cubierta.ps cubierta.dvi

book.ind: $(FILES)
	latex book
	makeindex book.idx

book.bbl: $(FILES)
	latex book
	bibtex book

all: $(FILES) $(EPSS) $(EJEMPLOS) book.ind book.bbl
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
	rm -f *.aux *.log *.dvi *.idx *.ilg *.ind *.toc *.bbl \
	      *.blg *.lot *.lof *.lde *.exa
	rm -rf main
	rm -f $(EPSS) $(CEPSS)
