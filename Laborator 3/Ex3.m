x_exact = 100;  
eroare_absoluta = 2;  

% Calcularea limitelor inferioară și superioară
x1 = x_exact - eroare_absoluta; % Aproximare prin lipsă
x2 = x_exact + eroare_absoluta; % Aproximare prin adaos

x_aproximat = (x1 + x2) / 2;
delta_x_max = (x2 - x1) / 2;

fprintf('Exercitiul 3:\n');
fprintf('Intervalul de incertitudine: [%.2f cm, %.2f cm]\n', x1, x2);
fprintf('Aproximarea lui x conform Observatiei 3: %.2f cm\n', x_aproximat);
fprintf('Eroarea absoluta maxima Δa = %.2f cm\n\n', delta_x_max);
