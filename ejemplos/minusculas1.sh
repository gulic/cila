#!/bin/sh
# minusculas1.sh .- Utilización de la sentencia "for".
# Copiado de http://www.linuxgazette.com/issue25/dearman.html

DIR=$1

for a in `ls $DIR`
do
  fname=`echo $a | tr A-Z a-z`
  mv $DIR/$a $DIR/$fname
done;
exit 0
