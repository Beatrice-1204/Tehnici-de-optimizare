%%Functie de doua variabile
clc; clear; close all;
f = @(x, y) (1 - x).^2 + 100*(y - x.^2).^2;
x = linspace(-2, 2, 100);
y = linspace(-1, 3, 100);
[X, Y] = meshgrid(x, y);
Z = f(X, Y);
figure;
surf(X, Y, Z, 'EdgeColor', 'none');
xlabel('x');
ylabel('y');
zlabel('f(x, y)');
title('Reprezentarea 3D a funcției Rosenbrock');
colorbar;
hold on;
x0 = [0, 0]; 
[x_min, f_min] = fminunc(@(v) f(v(1), v(2)), x0);
plot3(x_min(1), x_min(2), f_min, 'ro', 'MarkerSize', 10,'MarkerFaceColor', 'r');
legend('f(x, y)', 'Minim global');
hold off;