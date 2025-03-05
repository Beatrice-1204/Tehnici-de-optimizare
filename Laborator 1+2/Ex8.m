syms x
f = (x + 1)^2;
% Expansiunea expresiei
expanded_f = expand(f);
disp('Expresia expandată:');
disp(expanded_f);
% Simplificare
simplified_f = simplify(expanded_f);
disp('Expresia simplificată:');
disp(simplified_f);