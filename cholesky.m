function [L] = cholesky (A)
    [n n] = size(A);
    L=zeros(n,n);
    for i = 1:n
        for j = 1:i-1
            s = L(i,1:j-1)*L(j,1:j-1)';
            L(i,j) = (A(i,j)-s)/L(j,j);
        end

        s = L(i,1:i-1)*L(i,1:i-1)';
        L(i,i) = sqrt(A(i,i)-s);
    end
    %algorimul este exact ca cel prezentat la curs + vectorizare
endfunction