clc;
clear; 
close all;
x = linspace(-3, 3, 100);
y = linspace(-3, 3, 100);
[X, Y] = meshgrid(x, y);

%% 1. Fct sferica cu sinus
Z1 = X.^2 + Y.^2 + 2*sin(X) + 2*sin(Y);

figure;
surf(X, Y, Z1);
xlabel('X'); ylabel('Y'); zlabel('f(X, Y)');
title('Functia sferica + sinus');
colorbar;
shading interp;

%% 2. Fct paraboloidala cu cosinus
Z2 = X.^2 + Y.^2 + cos(2*pi*X) + cos(2*pi*Y);

figure;
surf(X, Y, Z2);
xlabel('X'); ylabel('Y'); zlabel('f(X, Y)');
title('Functia paraboloidala + cosinus');
colorbar;
shading interp;

%% 3. Funcția Gaussiana cu paraboloid
Z3 = X.^2 + Y.^2 - exp(-(X.^2 + Y.^2));

figure;
surf(X, Y, Z3);
xlabel('X'); ylabel('Y'); zlabel('f(X, Y)');
title('Functia Gaussiana combinata cu paraboloid');
colorbar;
shading interp;
