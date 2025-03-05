syms x y
a = 5; % Variabilă numerică
b = x^2 + y;
% Verificare tip
disp(['a este simbolică? ', num2str(isa(a, 'sym'))]);
disp(['b este simbolică? ', num2str(isa(b, 'sym'))]);