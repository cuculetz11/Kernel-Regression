function [K] = build_kernel (X, f, f_param)
  # Construiti matricea K (matricea kernel-urilor) asa cum este
  # descrisa in enuntul temei pornind de la datele de intrare X
  # Functia de kernel este descrisa de parametrul f si foloseste f_param
  # ca al 3-lea parametru

  [m n] = size(X);
  K = zeros(m);
  for i = 1 : m
    for j = i : m
      K(i, j) = f(X(i, :), X(j, :), f_param);
      K(j, i) = K(i, j);
    endfor
  endfor
%stim ca matricea kernel-urilor este simetrica asa optimizam calculul ei
endfunction
