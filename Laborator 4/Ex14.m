% Punctul A: Volumul sferei
r = 2; % raza aproximativa
pi_approx = 3.14; % valoarea aproximativa a lui pi
V = (4/3) * pi_approx * r^3; % Volumul sferei

% Derivata partiala a volumului fata de r si pi
dV_dr = 4 * pi_approx * r^2;
dV_dpi = (4/3) * r^3;

% Conditia erorii totale: dV < 0.01
syms dr dpi
error_eq = dV_dr * dr + dV_dpi * dpi == 0.01;
sol = solve(error_eq, dr);
disp('Eroarea maxima permisa pentru r in cazul sferei:'), disp(double(sol));

%% Punctul B: Lungimea cercului
r = 5; % raza aproximativa
Lcerc = 2 * pi_approx * r;

dL_dr = 2 * pi_approx;
dL_dpi = 2 * r;

error_eq_L = dL_dr * dr + dL_dpi * dpi == 0.02;
sol_L = solve(error_eq_L, dr);
disp('Eroarea maxima permisa pentru r in cazul cercului:'), disp(double(sol_L));

%% Punctul C: Aria cercului
r = 3; dr = 0.01;
Acerc = pi_approx * r^2;
dA_dr = 2 * pi_approx * r;
dA = dA_dr * dr;
delta_A = dA / Acerc;
disp('Eroarea absoluta pentru aria cercului:'), disp(dA);
disp('Eroarea relativa pentru aria cercului:'), disp(delta_A);

%% Punctul D: Volumul conului
r = 2; dr = 0.003;
h = 2; dh = 0.001;
V_con = (pi_approx * r^2 * h) / 3;
dV_dr_con = (2 * pi_approx * r * h) / 3;
dV_dh_con = (pi_approx * r^2) / 3;
dV_con = dV_dr_con * dr + dV_dh_con * dh;
delta_V_con = dV_con / V_con;
disp('Eroarea absoluta pentru volumul conului:'), disp(dV_con);
disp('Eroarea relativa pentru volumul conului:'), disp(delta_V_con);
