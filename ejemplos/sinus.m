#!/usr/bin/octave -qf
x=[0:0.01:1];       # rango variacion eje x
clearplot;          # borramos grafica
subplot(1,1,1);     # un unico plot centrado
axis("auto","normal");     # ejes automaticos
hold on;            # superpone siguientes graficos
plot(x, +sin(2*pi*x), ';+sin;')
plot(x, +cos(2*pi*x), ';+cos;')
plot(x, -sin(2*pi*x), ';-sin;')
plot(x, -cos(2*pi*x), ';-cos;')
