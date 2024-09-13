function pred = eval_value(x, X, f, f_param, a)
   [m n] = size(X);

   pred = 0;
   for i = 1:m
    pred = pred + a(i) * f(x,X(i,:), f_param);
   endfor


endfunction