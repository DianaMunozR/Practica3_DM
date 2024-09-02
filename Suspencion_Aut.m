function dx = Suspencion_Aut(t,x)
% Definición de los parámetros
m1 = 290;
b1 = 1000;
m2 = 59;
k1 = 16182;
f = 0;
k2 = 19000;
z=0.05*sin(0.5*pi*t);
% Representar los estados del sistema
dx = zeros(4,1);
% Matrices
M = [m1, 0; 0, m2];
B = [b1, -b1; -b1, b1];
K = [k1, -k1; -k1, k1+k2];
F = [f; -f + k2 * z];
% Definicion de la dinámica del sistema
dx(1) = x(3);
dx(2) = x(4);
dx(3:4) = (M)\(-K * [x(1); x(2)] - B * [x(3); x(4)] + F);