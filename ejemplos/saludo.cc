// saludo.cc .- Ejemplo 5 para el CILA 2001

#include <iostream.h>;
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
