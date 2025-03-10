% Inițializare variabile pentru cel mai mic și cel mai mare număr par
cel_mai_mic = inf;
cel_mai_mare = -inf;

% Parcurgem toate combinațiile de două cifre distincte
for i = 1:9
    for j = i+1:9
        % Formăm numărul așezat crescător
        numar = 10*i + j;
        
        % Verificăm dacă numărul este par
        if mod(numar, 2) == 0
            % Actualizăm cel mai mic și cel mai mare număr par
            cel_mai_mic = min(cel_mai_mic, numar);
            cel_mai_mare = max(cel_mai_mare, numar);
        end
    end
end

% Afișăm rezultatele
disp(['Cel mai mic număr par: ', num2str(cel_mai_mic)]);
disp(['Cel mai mare număr par: ', num2str(cel_mai_mare)]);
