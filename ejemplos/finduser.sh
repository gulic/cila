#!/bin/sh
# finduser.sh .- Utilización de la sentencia "if".
# Copiado de http://www.linuxgazette.com/issue25/dearman.html

# Carga la variable $ME con el primer argumento de la línea de comandos.
ME=$1

# Buscar a $ME en el archivo de contraseñas del sistema.
if grep $ME /etc/passwd > /dev/null
then
  # Si $ME está en el archivo, mostrar la siguiente línea
  echo "$ME es usuario de este sistema"
fi
