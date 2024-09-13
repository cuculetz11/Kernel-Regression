function retval = polynomial_kernel (x, y, d)
 [m n] = size(y)
  if (m == 1)
    y = y';
  endif
  [m1 n1] = size(x)
  if (m1 == 1)
    x = x';
  endif
  retval = (1 + y' * x) ^ d;
  
endfunction
