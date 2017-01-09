#!/usr/bin/octave -qf
y=randn(100,1);   # matriz num aleatorios normal
clearplot;        # borra grafico
axis("auto","normal"); # ejes automáticos
hold off;         # no superpone siguientes graficos
subplot(1,2,1);   # cuadrante 1 de 2
title("datos aleatorios en eje y");
plot(y,'*');      # plotea los datos aleatorios con *
subplot(1,2,2);   # cuadrante 2 de 2
title("histograma");
hist(y,20,1);     # histograma de 20 barras normalizado a 1
