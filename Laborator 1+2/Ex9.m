%%derivata simbolica
syms x
f = x^3 + 2*x^2 - 5*x + 4;
df = diff(f, x); % Derivata lui f(x) în raport cu x
disp('Derivata f(x) este:');
disp(df);
%%Rezultat: 3x^2 + 4x − 5
