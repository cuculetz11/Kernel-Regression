function [x] = conjugate_gradient (A, b, x0, tol, max_iter) 
  r = b - A*x0;
  v = r;
  x = x0;
  tol_2 = tol*tol;
  k = 1;

  while (k <= max_iter && r'*r > tol_2)
    t = (r'*r)/(v'*A*v);
    x = x + t*v;
    r_prev = r;
    r = r - t*A*v;
    s = (r'*r)/(r_prev'*r_prev);
    v = r + s*v;
    k = k + 1;
  endwhile
  
endfunction