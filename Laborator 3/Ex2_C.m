L = 50; L_measured = 52;
B = 100; B_measured = 101;
D = 300; D_measured = 297;

[errAbs_L, errRel_L] = ex2_B(L, L_measured);
[errAbs_B, errRel_B] = ex2_B(B, B_measured);
[errAbs_D, errRel_D] = ex2_B(D, D_measured);

% Compararea măsurătorilor
[minError, index] = min([errRel_L, errRel_B, errRel_D]);
labels = {'Lungimea sforii', 'Lungimea barei', 'Distanța dintre puncte'};

fprintf('Cea mai exactă măsurătoare este: %s, cu eroare relativă de %.8f\n', labels{index}, minError);