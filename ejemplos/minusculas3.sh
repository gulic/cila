#!/bin/sh
# minusculas3.sh .- Mejora del programa "minusculas3".
# Copiado de http://www.linuxgazette.com/issue25/dearman.html

if [ ! $1 ]
then
  echo "Uso: `basename $0` nombre_directorio"
  exit 1
fi 

if [ -d $1 ]
then
  DIR="/$1"
fi

if [ -f $1 ]
then
  DIR=""
fi 

for a in `ls $DIR`
do
  fname=`echo $a | tr A-Z a-z`
  mv $DIR$a $DIR$fname
done;
exit 0
