clc; clear;

% Numărul exact
x = 499.987;

% Aproximările
approximations = [500, 499.992, 500.02, 499.979];

% Determinarea numărului de zecimale exacte pentru fiecare aproximare
fprintf('Număr exact: %.6f\n', x);
for i = 1:length(approximations)
    a = approximations(i);
    diff = abs(x - a);
    
    % Determinăm câte zecimale exacte are aproximarea
    exact_digits = floor(-log10(diff));
    
    fprintf('Aproximare: %.6f, Zecimale exacte: %d\n', a, exact_digits);
end
