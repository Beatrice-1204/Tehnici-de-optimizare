function min_puncte = Task4minim_simbolic(f)
    vars = symvar(f);  
    
    df = arrayfun(@(v) diff(f, v), vars, 'UniformOutput', false);
    
    %  f'(x) = 0
    sol = solve([df{:}] == 0, vars);
    
    if isscalar(vars)
        crit_p = double(sol); 
    else
        crit_p = [double(sol.(char(vars(1)))), double(sol.(char(vars(2))))]; 
    end
    
    disp('Puncte de minim simbolice:');
    disp(crit_p);
end
