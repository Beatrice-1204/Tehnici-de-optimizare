clc; clear;

% Numerele de rotunjit
numbers = [2.456750, 2.42629, 2.456752, 2.416512, 2.45350];
decimal_places = 3;

% Parcurgerea fiecărui număr și rotunjirea conform regulii cifrei pare
for i = 1:length(numbers)
    fprintf('\nNumărul inițial: %.6f\n', numbers(i));
    factor = 10^decimal_places;
    temp = numbers(i) * factor;
    
    % Verificăm dacă cifra de tăiere este 5
    if mod(temp, 1) == 0.5
        % Aplicăm regula cifrei pare
        rounded = (floor(temp) + mod(floor(temp), 2)) / factor;
    else
        % Rotunjim normal
        rounded = round(numbers(i), decimal_places);
    end
    
    fprintf('Rotunjit la %d zecimale: %.10f\n', decimal_places, rounded);
end
