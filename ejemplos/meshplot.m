#!/usr/bin/octave -qf

1; # limpia memoria

function configura
	hold off;               # no superpone siguientes graficos
	clearplot();            # limpiamos
	axis("auto","normal");  # ejes automáticos
	subplot(1,1,1);         # nos ponemos en una sola ventana
	xlabel("eje x");        #
	ylabel("eje y");        # ponemos etiquetas
	zlabel("eje z");        #
endfunction

x=[-10:0.5:10];         # vector del eje x
y=[-10:0.5:10];         # vector del eje y
[mx,my]=meshgrid(x,y);  # genera matrices de ejes
mr=sqrt(mx.^2+my.^2);   # matriz que contiene el radio
mz=sin(mr)./mr;         # funcion z=sin(r)/r

configura();

subplot(1,2,1);         # cuadrante 1 de 2
title("plano eje x creciente, eje y constante");
mesh(x,y,mx);
subplot(1,2,2);         # cuadrante 2 de 2
title("plano eje x constante, eje y creciente");
mesh(x,y,my);

pause(5);               # pausar 5 segundos
configura();

subplot(1,2,1);         # cuadrante 1 de 2
title("superficie 3d");
mesh(x,y,mz);      
subplot(1,2,2);         # cuadrante 2 de 2
title("curvas de nivel");
contour(x,y,mz);     

