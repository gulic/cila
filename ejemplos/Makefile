DESTDIR=
PACKAGE=cila-ejemplos
VERSION=1.2
EJEMPLOS=$(shell ls *.*)

all:
	echo "No hay nada que compilar"

install:
	install -d $(DESTDIR)/usr/share/doc/cila-ejemplos/
	install -m 644 $(EJEMPLOS) $(DESTDIR)/usr/share/doc/cila-ejemplos/

clean:
	echo "No hay nada que limpiar"
