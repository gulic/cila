# Makefile .- Ejemplo sencillo de Makefile.

holamundo: holamain.o holafuncm.o
	gcc -lm -o holamundo holamain.o holafuncm.o

holamain.o: holamain.c holafunc.h
	gcc -c holamain.c

holafuncm.o: holafuncm.c holafunc.h
	gcc -c holafuncm.c

clean:
	rm holamundo \
	   holamain.o holafuncm.o       
