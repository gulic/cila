#!/bin/sh
# minusculas2.sh .- Mejora del programa "minusculas1".
# Copiado de http://www.linuxgazette.com/issue25/dearman.html

if [ ! $1 ]
then
  echo "Uso: `basename $0` nombre_directorio"
  exit 1
fi 

DIR=$1

for a in `ls $DIR`
do
  fname=`echo $a | tr A-Z a-z`
  mv $DIR/$a $DIR/$fname
done;
exit 0
