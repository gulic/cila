#!/usr/bin/octave
clear;
hold off;
T=0.1;                      # periodo de muestreo
N=100;                      # numero de muestras
W=3*(2*pi/T);               # frecuencia de la senoidal
A=20*T;                     # ancho del escalon
t=T*[0:N];                  # escala temporal
f=(2*pi/T)*[-N/2:N/2]/N;    # escala en frecuencias
# la primera es la fft de un seno de 20Hz
title("Seno de 20Hz");
x1=sin(2*pi*W*t);
y1=fft(x1)/length(t);
y1=fftshift(y1);
subplot(3,1,1);
clearplot;
plot(t,x1,';sinusoidal;');
subplot(3,1,2);
clearplot;
plot(f,abs(y1),';modulo;');
subplot(3,1,3);
clearplot;
plot(f,arg(y1),';fase;');
pause(5);
# la segunda es la de un escalon centrado de ancho A sg.
x2=abs(t-T*N/2)<(A/2);
y2=fft(x2)/length(t);
y2=fftshift(y2);
subplot(3,1,1);
clearplot;
plot(t,x2,';escalon;');
subplot(3,1,2);
clearplot;
plot(f,abs(y2),';modulo;');
subplot(3,1,3);
clearplot;
plot(f,arg(y2),';fase;');
