clc; 
clear; 
close all;

syms x y
f1 = x^4 - 3*x^3 + 2;        
f2 = x^2 + y^2 + sin(x) + cos(y); 

Task4minim_simbolic(f1);
Task4minim_simbolic(f2);

Task4minim_numeric(matlabFunction(f1), [-2, 3]); 
Task4minim_numeric(matlabFunction(f2, 'Vars', {[x, y]}), []); 
