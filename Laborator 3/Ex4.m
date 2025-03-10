% Exercițiul 4 - Calculul marginilor erorii absolute

% a) Aproximare pentru pi
a1_pi = 3.1415;
a2_pi = 3.1416;
pi_exact = pi; 
delta_a_pi = (a2_pi - a1_pi) / 2;
eroare_absoluta_pi = abs(pi_exact - a1_pi);

fprintf('Pentru pi:\n');
fprintf('Eroarea absoluta maxima Δa = %.5f\n', delta_a_pi);
fprintf('Eroarea absoluta reala |x - a| = %.5f\n\n', eroare_absoluta_pi);

% b) Aproximare pentru e
a1_e = 2.718;
a2_e = 2.719;
e_exact = exp(1); 
delta_a_e = (a2_e - a1_e) / 2;
eroare_absoluta_e = abs(e_exact - a1_e);

fprintf('Pentru e:\n');
fprintf('Eroarea absoluta maxima Δa = %.5f\n', delta_a_e);
fprintf('Eroarea absoluta reala |x - a| = %.5f\n', eroare_absoluta_e);
