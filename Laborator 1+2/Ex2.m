clc;
clear; 
close all;

%% a. Identificarea variabilelor simbolice dintr-o expresie
syms x y z
f1 = x^2 + y*z + sin(x*y);

vars1 = symvar(f1);
disp('a) Variabilele simbolice din expresie sunt:');
disp(vars1);

%% b. Identificarea variabilelor într-o expresie numerică
f2 = sym(3 + 5); % Conversie explicită la symbolic
vars2 = symvar(f2);

disp('b) Variabilele simbolice sunt:');
disp(vars2); % Se așteaptă []

%% c. Identificarea primei variabile simbolice într-o expresie
syms a b c
g = a^3 + 2*b + c^2;

first_var = symvar(g, 1);
disp(['c) Prima variabilă simbolică este: ', char(first_var)]);




