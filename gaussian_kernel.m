function retval = gaussian_kernel (x, y, sigma)
[m n] = size(y)
  if (m == 1)
    y = y';
  endif
  [m1 n1] = size(x)
  if (m1 == 1)
    x = x';
  endif
  retval = exp(-norm(x-y)^2/(2*sigma^2));
  
endfunction
