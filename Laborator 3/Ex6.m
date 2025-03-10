clc; clear;

% Numerele de rotunjit
numbers = [2.416752, 6.216253, 3.454650];
decimal_places = [2, 3, 4, 5];

% Parcurgerea fiecărui număr și rotunjirea conform regulii cifrei pare
for i = 1:length(numbers)
    fprintf('\nNumărul inițial: %.6f\n', numbers(i));
    for j = 1:length(decimal_places)
        factor = 10^decimal_places(j);
        temp = numbers(i) * factor;
        
        % Verificăm dacă cifra de tăiere este 5
        if mod(temp, 1) == 0.5
            % Aplicăm regula cifrei pare
            rounded = (floor(temp) + mod(floor(temp), 2)) / factor;
        else
            % Rotunjim normal
            rounded = round(numbers(i), decimal_places(j));
        end
        
        fprintf('Rotunjit la %d zecimale: %.10f\n', decimal_places(j), rounded);
    end
end
