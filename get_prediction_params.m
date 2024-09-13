
function [a] = get_prediction_params (K, y, lambda)
    [m1 n1] = size(y);
    if (m1 == 1)
        y = y';
    endif
    [m m] = size(K);
    L = cholesky(lambda * eye(m) + K);
    L1 = get_lower_inverse(L);
    a = lambda * L1' * L1 * y; 
    

endfunction
