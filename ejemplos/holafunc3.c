/* holafunc3.c .- Ejemplo 3 para el CILA 2001 */
#include <math.h>
#include <stdio.h>
#include "holafunc.h"

int
holafunc (const char *str)
{
  float a, b;

  printf ("El que a buen árbol se arrima, %s,\n", str);

  a = 0.5;
  b = cos (a);
  return printf ("y el coseno de %f es %f. \n\n", a, b);
}
