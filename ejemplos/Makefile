# Makefile .- Ejemplo para el CILA 2001.

CC = gcc
CFLAGS = -g -Wall
LFLAGS = -lm

OBJECTS = main.o holafunc3.o
INCLUDES = holafunc.h

holamundo: $(OBJECTS)
	$(CC) $(LFLAGS) -o $@ $^

$(OBJECTS): %.o : %.c $(INCLUDES)
	$(CC) -c $(CFLAGS) -o $@ $<
        
clean:
	rm -f *~ $(OBJECTS)
  
clean_all: clean
	rm -f holamundo
