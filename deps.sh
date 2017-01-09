#!/bin/bash
#
# Script chapucero para buscar referencias muertas, i.e.
# \ref{algo} o \pageref{algo} cuando no hay \label{algo}
#
# Miguel Ángel Vilela, Septiembre 2002

if ! test -a labels
then
	grep '\\label{' *.tex | sed 's/.*\\label{\([^}]*\)}.*/\1/' > labels
fi

if ! test -a refs
then
	grep '\\ref{' *.tex | sed 's/.*\\ref{\([^}]*\)}.*/\1/' > refs  
fi

if ! test -a refs
then
	grep '\\pageref{' *.tex | sed 's/.*\\pageref{\([^}]*\)}.*/\1/' >> refs  
fi

for ref in `cat refs`
do
	if grep -q $ref labels
	then
		echo -n "."
	else
		files=`grep -n "ref{$ref}" *.tex | cut -f1 -d:`
		for file in $files
		do
			line=`grep -n "ref{$ref}" $file | cut -f1 -d:`
			echo -e "\r$file:$line:referencia a una etiqueta no definida: $ref"
		done
	fi
done
echo "Terminado"
