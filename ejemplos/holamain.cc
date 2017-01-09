// holamain.cc .- Ejemplo de programa en C++.
//              Punto de entrada a la aplicación.

#include "saludo.h"

int
main (void)
{
  saludo hola ("El que a buen árbol se arrima, buena sombra le cobija.\n\n");

  hola.print ();
  return 0;
}
