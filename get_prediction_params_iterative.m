function [a] = get_prediction_params_iterative (K, y, lambda)
      [m1 n1] = size(y);
      if (m1 == 1)
            y = y';
      endif
      [m m] = size(K);
      mat = K + lambda * eye(m);
      x0 = zeros(m,1);
      a = conjugate_gradient(mat,lambda * y,x0, 0.000000001, 2*m);
endfunction
