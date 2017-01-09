#!/bin/sh
# funcsh.sh .- Ejemplo del uso de funciones.
function mifunc ()
{
  echo La fecha de hoy:
  date
}

echo Veamos qué hace esta función...
mifunc
