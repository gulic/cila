# entrada de variables
a=[1,2,3] 
b=[1,2,3;4,5,6;7,8,9]
c="hola mundo"
d.vector=[1,2];
d.matriz=[1,2;3,4];

# operaciones con vectores
a=[1:4]    # comienzo -> paso=1 -> final
b=[2:2:8]  # comienzo -> paso -> final
a.*b   # multiplicacion elemento a elemento
a./b   # division elemento a elemento
a*b'   # vector 1x4 x vector 4x1
a'*b   # vector 4x1 x vector 1x4

# operaciones con matrices
c=diag([1,2,3,4]) # creacion de matrices diagonales
inv(c) # inversa de una matriz
det(c) # determinante de una matriz
eye(4) # matriz identidad de dimensión 4
rand(4,3) # matriz de numeros aleatorios 4x3

# plot en 2d
x=[0:0.01:1];
y=sin(2*pi*x);
plot(x) # presentamos una recta
plot(y) # presentamos una senoidal
plot(x,y) # senoidal, pero con eje x bien puesto

# plot en 3d
x=[-1:0.1:1]; # vector del eje x 
y=[-1:0.1:1]; # vector del eje x
[mx,my]=meshgrid(x,y); # genera matrices de ejes
mesh(mx) # matriz que representa las x
mesh(my) # matriz que representa las y
mz=2-mx.^2-my.^2; # elemento por elemento
mesh(x,y,mz)

# funcion FFT (Fast Fourier Transform)
x=[-1:0.01:1];
y=(abs(x)<0.2); # escalon generado con una comparación
plot(x,y) # funcion original
f=abs(fftshift(fft(y)));
plot(f)  # funcion transformada


# ecuacion diferencial
function xdot = f (x, t)
  r = 0.25;
  k = 1.4;
  a = 1.5;
  b = 0.16;
  c = 0.9;
  d = 0.8;
  xdot(1) = r*x(1)*(1 - x(1)/k) - a*x(1)*x(2)/(1 + b*x(1));
  xdot(2) = c*a*x(1)*x(2)/(1 + b*x(1)) - d*x(2);
endfunction
x0 = [1; 2];
t = linspace (0, 50, 200)';
x = lsode ("f", x0, t);
plot (t, x)
