clc; 
clear;
close all;
[X, Y] = meshgrid(-3:0.1:3, -3:0.1:3); % Cream un grid 2D
Z = X.^2 + Y.^2 - 3*X.*Y; % Calculăm valorile funcției
figure;
surf(X, Y, Z); % Reprezentare 3D
xlabel('x'); ylabel('y'); zlabel('f(x, y)');
title('Grafic 3D al functiei f(x, y)');
colorbar; % Adaugă bara de culori