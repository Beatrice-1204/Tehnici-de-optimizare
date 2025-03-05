function [x_min, f_min] = Task4minim_numeric(f, interval)
    if length(interval) == 2
        [x_min, f_min] = fminbnd(f, interval(1), interval(2)); 
    else
        [x_min, f_min] = fminsearch(f, [0, 0]); 
    end
    disp(['Minim numeric la: ', num2str(x_min), ', f(x) = ', num2str(f_min)]);
end
