DOCSDIR=$(DESTDIR)/usr/share/doc
PACKAGE=cila-libro
VERSION=1.1
DISTDIR=$(PACKAGE)-$(VERSION)

LATEX = latex
DVIPS = dvips
NAME = Libro_CILA

.PHONY: clean
PNGS = $(wildcard imagenes/*.png)
JPGS = $(wildcard imagenes/*.jpg)
EPSS = $(JPGS:.jpg=.eps)

TEXS = $(wildcard *.tex)

FILES = $(TEXS) cila.sty biblio.bib

IMAGES = $(wilcard imagenes/*.eps)

EXAMPLES = 	$(wilcard ejemplos/*.*)

all: $(EPSS) 

%.jpg: %.png
	pngtopnm $< | pnmtojpeg > $@

%.eps: %.jpg
	jpeg2ps -o $@ $<
		
%.dvi: %.tex
	$(LATEX) $<

%.ps: %.dvi
	$(DVIPS) -o $@ $<

%.pdf: %.ps
	ps2pdf $< $@

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

splitps: Libro_CILA.ps
	echo "quit" | gs -sDEVICE=pswrite -sOutputFile=Libro_CILA_%03d.ps Libro_CILA.ps

splitpdf:
	for f in `ls Libro_CILA_*.ps`; do \
	rm -f $$f.pdf; \
	ff=`echo "$$f" | cut -f1 -d.`; \
	ps2pdf $$ff.ps $$ff.pdf; \
	done

splitcls:
	rm -f Libro_CILA_*.ps

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
	ln -s $(DOCSDIR)/cila-ejemplos $(DOCSDIR)/$(PACKAGE)/ejemplos
	install -m 644 $(NAME).ps $(DOCSDIR)/$(PACKAGE)
	#mv -fv ejemplos/CVS ejemplos/.CVS
	#install -m 644 ejemplos/*.* $(DOCSDIR)/$(PACKAGE)/ejemplos
	#mv -fv ejemplos/.CVS ejemplos/CVS

clean:
	rm -f *.aux *.log *.dvi *.idx *.ilg *.ind *.toc *.bbl \
	      *.blg *.lot *.lof *.lde *.exa
	rm -rf main
	rm -f $(EPSS) $(CEPSS)

