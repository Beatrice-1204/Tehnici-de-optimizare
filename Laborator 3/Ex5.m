% Numerele date
x = [8.987658, 8.987312, 8.987512, 8.9875, 8.9865, 8.9895];

% Rotunjirea la 3 zecimale folosind regula cifrei pare
x_round = round(x, 3);

% Afișarea rezultatelor
fprintf('Numerele rotunjite la 3 zecimale folosind regula cifrei pare:\n');
for i = 1:length(x)
    fprintf('x%d = %.6f -> %.3f\n', i, x(i), x_round(i));
end
