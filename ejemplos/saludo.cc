// saludo.cc .- Ejemplo de programa en C++.
//              Definición de los miembros de la clase saludo.

#include <iostream.h>
#include "saludo.h"

saludo::saludo (const char *str):
msg (str)
{
}

saludo::~saludo ()
{
}

void
saludo::print (void)
{
  cout << msg;
}
