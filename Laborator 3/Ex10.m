clc; clear;

% Numărul exact
x = 499.987;

% Aproximările
approximations = [500, 499.992, 500.02, 499.979, 499.989];

% Determinarea numărului de cifre semnificative pentru fiecare aproximare
fprintf('Număr exact: %.6f\n', x);
for i = 1:length(approximations)
    a = approximations(i);
    diff = abs(x - a);
    
    % Determinăm câte cifre semnificative are aproximarea
    sig_figs = floor(-log10(diff)) + 1;
    
    fprintf('Aproximare: %.6f, Cifre semnificative: %d\n', a, sig_figs);
end
