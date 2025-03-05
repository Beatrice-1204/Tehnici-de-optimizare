clc; 
clear;
close all;
x = linspace(-5, 5, 100);
y = linspace(-5, 5, 100);
[X, Y] = meshgrid(x, y);

%% 1. Funcția Rastrigin
Z_rastrigin = 20 + X.^2 + Y.^2 - 10*(cos(2*pi*X) + cos(2*pi*Y));

figure;
surf(X, Y, Z_rastrigin);
xlabel('X'); ylabel('Y'); zlabel('f(X, Y)');
title('Funcția Rastrigin');
colorbar;
shading interp;

%% 2. Funcția Ackley
Z_ackley = -20 * exp(-0.2 * sqrt(0.5*(X.^2 + Y.^2))) ...
           - exp(0.5 * (cos(2*pi*X) + cos(2*pi*Y))) + exp(1) + 20;

figure;
surf(X, Y, Z_ackley);
xlabel('X'); ylabel('Y'); zlabel('f(X, Y)');
title('Funcția Ackley');
colorbar;
shading interp;

%% 3. Funcția Griewank
Z_griewank = (X.^2 + Y.^2)/4000 - cos(X) .* cos(Y./sqrt(2)) + 1;

figure;
surf(X, Y, Z_griewank);
xlabel('X'); ylabel('Y'); zlabel('f(X, Y)');
title('Funcția Griewank');
colorbar;
shading interp;
