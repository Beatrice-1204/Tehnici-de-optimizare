%% a.Derivare simbolică
syms x;
f = x^2 - 4*x + 5;
df = diff(f, x); % Derivata lui f
disp(df);

%% b.Minimizare folosind fminbnd
f = @(x) x.^2 - 4*x + 5;
[x_min, f_min] = fminbnd(f, -10, 10);
fprintf('Minim local: x = %.2f, f(x) = %.2f\n', x_min, f_min);

%% c.Programare liniară folosind linprog
c = [-1; -2]; % Funcția obiectiv (maximizare -> se pune minus)
A = [1 1; -1 2]; 
b = [4; 2]; 
x = linprog(c, A, b);
disp('Soluția optimă:');
disp(x);
%% d.Optimizare neliniara cu fmincon
f = @(x) x(1)^2 + x(2)^2;
x0 = [1, 1]; % Punct inițial
A = [];
b = [];
Aeq = [];
beq = [];
lb = [0, 0]; % Limite inferioare
ub = [2, 2]; % Limite superioare
x_min = fmincon(f, x0, A, b, Aeq, beq, lb, ub)