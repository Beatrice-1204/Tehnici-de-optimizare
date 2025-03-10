clc; clear;

% Numerele de rotunjit
numbers = [502.364, 0.00300551, 1235.7, 0.0235];
sig_figs = 4;

% Funcție pentru rotunjirea conform regulii cifrei pare cu un număr specific de cifre semnificative
for i = 1:length(numbers)
    n = numbers(i);
    
    % Determinăm ordinul de mărime
    order = floor(log10(abs(n)));
    factor = 10^(sig_figs - 1 - order);
    temp = n * factor;
    
    % Aplicăm regula cifrei pare
    if mod(temp, 1) == 0.5
        rounded = (floor(temp) + mod(floor(temp), 2)) / factor;
    else
        rounded = round(n, sig_figs - 1 - order);
    end
    
    fprintf('Număr inițial: %.8f, Rotunjit la %d cifre semnificative: %.8f\n', n, sig_figs, rounded);
end
