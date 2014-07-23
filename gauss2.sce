// método de gauss para escalonamento de matriz
//metodo de gauss
clear;clc;
format (25)

//A = [1 1 1 6;2 -1 1 3;1 0 1 4];
B = [4 8 4; 2 1 -4; 3 -1 2]
b = [80 7 22];

function x = eliminacao_gauss(A,b)
    
    n = length(b);
    x = zeros(n,1);
    //eliminação
    for k = 1: n-1
        for i = k+1:n
            xmult = A(i,k)/A(k,k);
            for j = k+1:n
                A(i,j) = A(i,j)-xmult*A(k,j);
            end
            b(i) = b(i)-xmult*b(k);
        end
    end
    //substituição
    x(n) = b(n)/A(n,n);
    for i=n-1:-1:1
        soma = b(i);
        for j = i+1 : n
            soma = soma-A(i,j)*x(j);
        end
        x(i) = soma/A(i,i)
    end
    
endfunction

x = eliminacao_gauss(B,b);disp(x)
disp(B)