//lagrange
clear
clc
format (3)


function y = lagrangep(x,i),
// funcao para calcular o polinomio de lagrange 

    if i > size(x) then 
        error(" i incompativel com dimensao da tabela"); 
    end;
    
    [l,n]=size(x);
    
    for k=1:i-1, 
        r(k)=x(k); end;
    for k=i:n-1, 
        r(k)=x(k+1); 
    end;
    P=1;
    for k=1:(n-1),
         P=P*(x(i)-r(k)); 
    end;
    if P == 0 then error("tabela tem elementos iguais"); end;
    
    y = poly(r, "x", "root")/P;
    
endfunction


function y = interpoly(tab);
// calcula o polinomio interpolador pelo metodo de lagrange;
   
    [l,n] = size(tab);
    
    x = tab(1,:);
    
    for i=1:n,
         L(i)=lagrangep(x,i); 
    end;
    p=0;
    for i=1:n,
         p = p + tab(2,i)*L(i); 
    end;
    y = p;
endfunction


// Vamos aproximar o cos(x) no intervalo 0..2pi
tab=[0,%pi/2,%pi,3*%pi/2,2*%pi; 1,0,-1,0,1];
disp(tab);
g = interpoly(tab)
// Para construir a funcao devemos definir
deff("y=p(x)","y=horner(g,x)");
// plotagem da funcao p com cosseno
x=linspace(0,2*%pi,100)';

plot2d([x,x],[p(x),cos(x)]);