clc;
clear;
close all;
x = linspace(-2, 6, 100); % Generăm valori pentru x între -2 și 6
y = x.^2 - 4*x + 5; % Calculăm f(x)
figure;


plot(x, y, 'b', 'LineWidth', 2); % Reprezentare grafică
grid on;
xlabel('x'); ylabel('f(x)');
title('Graficul functiei f(x) = x^2 - 4x + 5');