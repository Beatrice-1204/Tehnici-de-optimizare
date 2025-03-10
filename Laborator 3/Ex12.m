% a) Determinarea numărului de cifre semnificative
n1 = 3.200 * 10^3;   % 4 cifre semnificative
n2 = 7.09 * 10^(-5); % 3 cifre semnificative
n3 = 3.461728 + 14.91 + 0.980001 + 5.2631;
n4 = 0.04216 - 0.0004134;

% Afisare numere și explicarea numărului de cifre semnificative
fprintf('n1 = %.4f (4 cifre semnificative)\n', n1);
fprintf('n2 = %.3f (3 cifre semnificative)\n', n2);

% b) Calculul și afișarea corectă cu cifre semnificative
% n3: Adunare - numărul de zecimale este determinat de 14.91 (2 zecimale)
n3_result = 3.461728 + 14.91 + 0.980001 + 5.2631;
fprintf('Rezultatul pentru n3 (2 zecimale): %.2f\n', n3_result);

% n4: Scădere - numărul de zecimale este determinat de 0.04216 (5 zecimale)
n4_result = 0.04216 - 0.0004134;
fprintf('Rezultatul pentru n4 (5 zecimale): %.5f\n', n4_result);
