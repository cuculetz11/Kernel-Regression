function retval = linear_kernel (x, y, other)
 [m n] = size(y)
  if (m == 1)
    y = y';
  endif
  [m1 n1] = size(x)
  if (m1 == 1)
    x = x';
  endif
  retval = y' * x;
endfunction
