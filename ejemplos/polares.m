#!/usr/bin/octave -qf
x=[0:0.01:2*pi];  # rango variacion angulo
clearplot;        # borra grafico
axis([-1 1 -1 1], "square");   # ejes manuales
hold off;         # no superpone siguientes graficos
subplot(2,2,1);   # cuadrante 1 de 4
polar(x,ones(size(x)));       # circulo
subplot(2,2,2);   # cuadrante 2 de 4
polar(10*x,x/5);    # espiral de arquímedes
subplot(2,2,3);   # cuadrante 3 de 4
polar(x,cos(2*x));# rosa de cuatro petalos
subplot(2,2,4);   # cuadrante 4 de 4
polar(x,cos(3*x));# rosa de tres petalos
