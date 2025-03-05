clc;
clear;
close all;
f = @(x) x.^3 - 6*x.^2 + 4*x + 12; % Definim funcția
figure;
fplot(f, [-3, 5], 'r', 'LineWidth', 2); % Desenare automată
grid on;
xlabel('x'); ylabel('f(x)');
title('Graficul functiei f(x) folosind fplot');