# LIBRO DEL CURSO DE INTRODUCCIÓN A LINUX PARA ALUMNOS

----

Este fichero contiene información de lectura _obligada_ para los  colaboradores y recomendada para los curiosos. Los apartados son:

 - _Contenido_:  
   Ficheros contenidos en este directorio/paquete
 - _Herramientas LaTeX_:  
   Programas y utilidades LaTeX necesarias
 - _Paquetes LaTeX_:  
   Paquetes del compilador LaTeX que utilizamos
 - _Comandos LaTeX_:  
   Recordatorio de los comandos LaTeX que utilizamos y para qué los utilizamos

## Convenciones
Lee el fichero [presentacion.tex](presentacion.tex), a partir de la línea 285. _SÍ_, _AHORA_.


Este directorio debería contener (al menos) los ficheros

 - README (Este fichero)
 - tareas (Fichero donde apuntamos lo que vamos haciendo)
 - Makefile (Instrucciones para GNU Make)
 - main.tex (Fichero principal del códgido LaTeX)
 - cila.sty (Paquete LaTeX (basado en fncychap.sty))
 - imagenes (Directorio donde pondremos todos los gráficos)
 - ejemplos (Directorio donde pondremos los ejemplos de código)
 - portada.tex (Portadas y notas de copyright)
 - presentacion.tex (Presentación de los apuntes)
 - contrib.tex (Lista de contribuciones)
 - introduccion.tex (Capítulo 'Introducción a GNU/Linux')
 - fdles.tex (Apéndice con la GNU FDL en castellano)
 - biblio.bib (Base de datos bibliobráfica en formato BIBTeX)
 - *.tex (Temas de los apuntes, un fichero .tex por tema)

## Herramientas LaTeX

 - _LaTeX_: compilador LaTeX con sus fuentes y paquétes
 - _BIBTeX_: compilador LaTeX de bibliografías
 - _MAKEINDEX_: compilador LaTeX de índices terminológicos
 - _dvips_: convertidor de DVI a PostScript
 - _ps2pdf_: convertidor de PostScript a PDF
 - _latex2html_: convertidor de LaTeX a HTML (prescindible)

## Paquetes LaTeX

 - _inputenc_: convierte los caracteres especiales a los comandos LaTex apropiados, lo usaremos con la opción 'utf8x'
 - _babel_: convierte los nombres de variables al castellano, usándolo con la opción 'spanish'
 - _fancyheadings_: facilita el uso de cabeceras y pies de página personalizados
 - _graphicx_: facilita la inclusión de gráficos, con más opciones que el paquete 'graphics'
 - _psfig_: facilita la manipulación de gráficos PostScript
 - _eurosym_: permite el uso del símbolo del ¤uro
 - _makeidx_: combinado con MAKEINDEX lo usaremos para construir el índice terminológico
 - _html_: permite introducir referencias a páginas web (URLs) que al traducir a HTML resultan en enláces
 - _color_: Permite usar colores en los formatos PostScript y PDF. Úsenlo con precaución.
 - _colortbl_: Permite colorear columnas y filas de tablas (PS, PDF). Úsenlo con precaución.
 - _verbatim_: proporciona potentes usos de entornos verbatim
 - _cila_: mejora el aspecto de las páginas que abren partes o capítulos (basándose en el paquete FancChapter), demás de definir algunas siglas, longitudes, y constantes. Implementa el entorno para ejemplos y el Índice de ejemplos. Debe ser el último.


## Chuleta de comandos LaTex utilizados
`{\sf TextoSinAdornos}` _Cambia el texto al tipo de 'sin adornos'_

`{\tt TextoEnMáquinaDeEscribir}` _Cambia el texto al tipo de 'maquina de escribir'_

`{\bf TextoEnNegrita}` _Cambia el texto al tipo en 'negrita'_

`{\em TextoEnItálica}` _Cambia el texto al tipo 'itálica'_

`{\sc TextoEnVersalita}` _Cambia el texto al tipo 'versalita'_

`\GULiC` _Introduce el texto 'Grupo de Usuarios de Linux de Canarias'_

`\CILA` _Introduce el texto 'Curso de Introducción a Linux para Alumnos'_

`\PILA` _Introduce el texto 'Party de Instalación de Linux para Alumnos'_

`\LaTeX` _Introduce el logotipo de LaTeX_

`\TeX` _Introduce el logotipo de TeX_

`\LyX` _Introduce el logotipo de LyX_

`\chapter{NombreCapítulo}` _Comienza un capítulo, no se cierra_

`\chapter*{NombreCapítulo}` _Igual que el anterior, pero no numera el capítulo ni incrementa el contador de capítulo_

`\section{NombreSección}` _Comienza una sección, no se cierra_

`\section*{NombreSección}` _Igual que el anterior, pero no numera el capítulo ni incrementa el contador de capítulo_

`\subsection{NombreSubsección}` _Comienza una subsección, no se cierra_

`\begin{verbatim}` _Comienza un entorno en el que el texto se mostrará cal cual sea tecleado. Lo usaremos para código fuente, salidas de un terminal, contenido de ficheros de ejemplo, etc. Se cierra con_ `\end{verbatim}`.

`\begin{ejemplo}{Nombre del fichero}{Descripción corta del ejemplo}` _Comienza un entorno destinado a mostrar ejemplos, sólo para código fuente de programas. Para usarlo léanse los comentarios del fichero [cila.sty](cila.sty) (a partir de la línea 124)_

`\begin{itemize}` _Comienza una lista desordenada (sin números). Los elementos de la lista se indican con `\item` y la lista se cierra con_ `\end{itemize}`.

`\begin{enumerate}` _Igual que la anterior, pero los elementos se muestran numerados. Se cierra con_ `\end{enumerate}`.

`\label{NombreEtiqueta}` _Etiqueta una posición en el documento, la cual se podrá referenciar con_ `\ref` _o_ `\pageref`.

`\ref{NombreEtiqueta}` _Introduce una referencia al punto del documento donde se encuentre_ `\label{NombreEtiqueta}`.

`\pageref{NombreEtiqueta}` _Introduce una referencia a la página del documento donde se encuentre_ `\label{NombreEtiqueta}`.

`\index{NombreEtiqueta}` _Introduce una referencia para usar en el índice terminológico._

`\cite{NombreObra}` _Introduce una referencia a una obra de la bibliografía_

`\begin{quote}` _Comienza un entorno en el que se incrementan los márgenes laterales, lo usaremos para citas textuales y similares. Se cierra con_ `\end{quote}`.

`\begin{center}` _Comienza un entorno en el que el texto está centrado y sin ajustar la longitud de las líneas, se cierra con_  `\end{center}`.

`\begin{flushright}` _Comienza un entorno en el que el texto está ajustado a la derecha, y sin ajustar la longitud de las líneas, se cierra con_ `\end{flushright}`.

`\begin{flushleft}` _Comienza un entorno en el que el texto está ajustado a la izquierda, y sin ajustar la longitud de las líneas, se cierra con_ `\end{flushleft}`.
