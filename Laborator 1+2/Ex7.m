syms x
f = x^2 + 2*x + 1; % Definim o funcție simbolică
% Evaluăm funcția pentru x = 3
val = subs(f, x, 3);
disp('Valoarea expresiei pentru x = 3 este:');
disp(val);