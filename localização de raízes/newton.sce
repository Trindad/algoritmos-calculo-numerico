clear;clc;
format (25)

Epson = 10^-5; //erro

//intervalo
//a = 2;
//b = 3;
//a = -2.44;
//b = -0.38;
a = -2;
b = 2;

function [a]= f(x)
    f = %e^x-x^2;
    //f=%e^cos(x)+x^3-3
    //temp = 2*x;
    //f = 0.1*(x^3)-(%e^temp)+2;
    //f = x^3-5*(x^2)+x+3;
    //f = (%e^x)-sin(x)-2;
    //a = (%e^x)-(x^2);
    //a = (x^3)-(5*(x^2))+x+3;
    //a = 2*x-sin(x)-4;
endfunction

function [b] = df(x)
    b = %e^x-(2*x);
    //b = (3*x^2)-(10*x)+1;
    //b = 2-cos(x);
endfunction

if f(a)*f(b) > 0 then
    mprintf("Valores do intervalo não há raiz");
    return null;
end

x0 = 0;
iter = 0;

// teste para x0
if f(a)*df(a) > 0 then
    x0 = b;
else
    x0 = a;
end

d = f(x0)/df(x0); 

fx = Epson+1;

mprintf("XN %f\n",x0);

while abs(fx) > Epson,
    //mprintf("XN %f\n",x0);
    xi = x0-d;
    
    x0 = xi;
    d = f(x0)/df(x0);
    
    
    fx = f(x0);
    mprintf("XN %f\n",x0);
    iter = iter+1;
end
    
     mprintf("\n\nXN:%f. Número de iterações:%d",x0,iter);
