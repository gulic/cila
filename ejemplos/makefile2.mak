# Makefile .- Ejemplo de Makefile con macros.

LINK = $(CC)
CFLAGS += -g -Wall
LDFLAGS += -lm


holamundo: holamain.o holafuncm.o
	$(LINK) $(LDFLAGS) -o $@ $^

holamain.o: holamain.c holafunc.h
	$(CC) $(CFLAGS) -c $<

holafuncm.o: holafuncm.c holafunc.h
	$(CC) $(CFLAGS) -c $<

clean:
	rm holamundo \
	   holamain.o holafuncm.o	   
