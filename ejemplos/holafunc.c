/* holafunc.c .- Ejemplo de programa en varios archivos.
 *         Definición de holafunc().
 */

#include <stdio.h>
#include "holafunc.h"

int
holafunc (const char *str)
{
  return printf ("El que a buen árbol se arrima, %s.\n\n", str);
}
