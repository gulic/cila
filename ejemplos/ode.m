#!/usr/bin/octave

clear;

function xdot = f (x, t)
  xdot = zeros (3,1);
  xdot(1) = 77.27 * (x(2) - x(1)*x(2) + x(1) - 8.375e-06*x(1)^2);
  xdot(2) = (x(3) - x(1)*x(2) - x(2)) / 77.27;
  xdot(3) = 0.161*(x(1) - x(3));
endfunction

# condicion inicial
x0 = [ 4; 1.1; 4 ];
# generación del eje t para la simulacion
t = linspace (0, 50, 100);
# simulacion
y = lsode ("f", x0, t);
hold off;
subplot(3,1,1);
plot(t,y(:,1),';x(1);');
subplot(3,1,2);
plot(t,y(:,2),';x(2);');
subplot(3,1,3);
plot(t,y(:,3),';x(3);');
