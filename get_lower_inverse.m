function [P] = get_lower_inverse(L)
[n, m] = size(L);
  if n != m
    error('nu este patratica');
  endif

B = eye(n);

for p = 1: n-1
    for i = p+1 : n 
        if L(p,p) == 0
            continue;
        endif

        tp = L(i,p)/L(p,p);
        L(i,p) = 0;
        L(i,p+1:n) = L(i,p+1:n) - tp*L(p,p+1:n);
        B(i,:) = B(i,:) - tp*B(p,:);
    endfor
endfor
%pana aici am facut eliminarea gaussiana(G) prezentata la curs si lab + vectorizat

for i = 1:n
    tp = L(i,i);
    L(i,i) = 1;
    B(i,:) = B(i,:)/tp;
    
endfor
P = B;
%aici am facut ca pe diagonala principala sa fie 1
endfunction
