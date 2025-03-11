% Numerele date
x1 = 176;
x2 = 125;
x3 = 41;

% Convertirea în binar
bin_x1 = dec2bin(x1);
bin_x2 = dec2bin(x2);
bin_x3 = dec2bin(x3);

% Normalizarea numerelor în formă 1.x * 2^exp
[f1, e1] = log2(x1);
[f2, e2] = log2(x2);
[f3, e3] = log2(x3);

% Afișare rezultate
fprintf('Numărul %d în binar: %s\n', x1, bin_x1);
fprintf('Forma normalizată: %.10f * 2^(%d)\n', f1, e1);

fprintf('Numărul %d în binar: %s\n', x2, bin_x2);
fprintf('Forma normalizată: %.10f * 2^(%d)\n', f2, e2);

fprintf('Numărul %d în binar: %s\n', x3, bin_x3);
fprintf('Forma normalizată: %.10f * 2^(%d)\n', f3, e3);
