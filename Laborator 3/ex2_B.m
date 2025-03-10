function [errAbs, errRel] = ex2_B(a, x)
    % Verificare număr de argumente de intrare
    if nargin ~= 2
        error('Număr greșit de argumente de intrare. Funcția necesită două argumente: a și x.');
    end
    
    % Verificare număr de argumente de ieșire
    if nargout > 2
        error('Număr greșit de argumente de ieșire. Funcția returnează două valori: eroarea absolută și eroarea relativă.');
    end
    
    % Verificare dimensiuni vectori
    if ~isequal(size(a), size(x))
        error('Vectorii de intrare trebuie să aibă aceeași dimensiune.');
    end
    
    % Calculul erorilor
    errAbs = abs(x - a);
    errRel = errAbs ./ abs(a);
    
    % Afisarea rezultatelor
    fprintf('a = %.8f \n', a)
    fprintf('x = %.8f \n', x)
    fprintf('eroare_absoluta = %.8f\n', errAbs)
    fprintf('eroare_relativa = %.8f\n', errRel)
    
    % Determinarea tipului de aproximare
    if a < x
        fprintf('a îl aproximează pe x prin lipsă.\n');
    else
        fprintf('a îl aproximează pe x prin adaos.\n');
    end
end
