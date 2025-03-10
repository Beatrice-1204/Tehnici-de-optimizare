clear
clc
format long % afisarea numerelor cu 15 zecimale

a = input('Introduceți valoarea lui a: ');
x = input('Introduceți valoarea lui x: ');

delta_a = x - a;
if delta_a == 0
    fprintf('delta_a este 0\n');
    return
end

eroare_absoluta = abs(x - a);
eroare_relativa = eroare_absoluta / abs(a);

% Afisarea numerelor cu 8 zecimale
fprintf('a = %.8f \n', a)
fprintf('x = %.8f \n', x)
fprintf('eroare_absoluta = %.8f\n', eroare_absoluta)
fprintf('eroare_relativa = %.8f\n', eroare_relativa)

% Determinarea tipului de aproximare
if a < x
    fprintf('a îl aproximează pe x prin lipsă.\n');
else
    fprintf('a îl aproximează pe x prin adaos.\n');
end
