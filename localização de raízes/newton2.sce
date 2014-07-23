clear;clc;
format (25)

E = 10^-5;
a = -2;
b = 2;

//função 
function [a]=f(x)
    a = (%e^x)-(x^2);
endfunction

//derivada da primeira
function [a]=d1(x)
    a = (%e^x)-2*x;
endfunction

//derivada da segunda
function [a]=d2(x)
    a = (%e^x);
endfunction

if f(a)*f(b) > 0 then
    
    mprintf("Valores do intervalo não há raiz");
    return null;
end

md = (a+b)/2;
xn = a;

if d1(md)*d2(md) then
    xn = b;   
end

n = 0;
fx = E+1;

while abs(fx) > E,
    mprintf("XN %f\n",xn);
    xn = xn-(f(xn)/d1(xn));
    fx = f(xn);
    n = n+1;
end
  mprintf("\n\nXN %f\nNumero de iterações:%d\nF(XN) = %f",xn,n,fx);
