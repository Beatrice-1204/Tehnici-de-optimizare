%%Functie de o variabila
clc; clear; close all;
f = @(x) x.^4 - 6*x.^2 + 4*x + 12;
x = linspace(-3, 3, 1000);
y = f(x);

figure;
plot(x, y, 'b', 'LineWidth', 2); hold on;
xlabel('x');
ylabel('f(x)');
title('Identificarea minimelor locale și globale');
grid on;

syms x_sym
f_sym = x_sym^4 - 6*x_sym^2 + 4*x_sym + 12;
df_sym = diff(f_sym);
crit_points = double(solve(df_sym == 0, x_sym));
f_crit = double(subs(f_sym, x_sym, crit_points));
plot(crit_points, f_crit, 'ro', 'MarkerSize', 8,'MarkerFaceColor', 'r');

[x_min, f_min] = fminbnd(f, -3, 3);
plot(x_min, f_min, 'go', 'MarkerSize', 10, 'MarkerFaceColor','g');
legend('f(x)', 'Minime locale', 'Minim global');
hold off;