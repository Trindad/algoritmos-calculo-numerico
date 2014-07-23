clear;clc;
format (25)

// METODO DA BISSEÇÃO
//entradas 

E = 0.01;

//a e b para a função : (%e^x)-(x^2)
//a = -2;
//b = 2;

//a e b para a função : e^cos(x)+x^3-3
//a = 1;
//b = 2; 

//a e b para a função x^3-5*x^2+x+3
//a = -1;
//b = 0;

// a e b para a função 0.1*x^3-%e^2*x+2
//a = -3;
//b = 0;

// a e b para a função x^3-9x+3
//a = 0;
//b = 1;

// a e b 2x^3+ln x-5
//a = 1;
//b = 2;

// a e b x^3-5*x^2+x+3
//a = -2.44;
//b = -0.38;

//a e b da primeira função da prova
//a = 3;
//b = 11;

// a e b da segunda lista
//a = 0;
//b = 0.5;

a = 1;
b = 2;
//a=2;
//b=3;

//Funções genéricas

function [] = grafico(ini, fim)
    intervalo = fim-ini;
    intervalo = intervalo / 100;
    while(ini < fim);
        x = ini;
        y = f(x);
        ini = ini + intervalo;
        plot(x, y,'.b');
    end;
endfunction;


function [a]=f(x)
    //a = (%e^x)-(x^2);
    //a = %e^cos(x)+x^3-3;
    //a = (x^3)-(5*x^2)+x+3;
    //a = (0.1*x^3)-(%e^(2*x))+2;
    //a = x^3-9*x+3;
   // a = 2*x^3+log(x)-5;
   //a = x^3-5*x^2+x+3;
   // a = 0.5*x^3-5*x^2+x+3;
   // a = 2*x^3-2*x-%e^x+1.5;
   a = %e^cos(x)+(x^3)-3;
   //a =x^3-10
   
endfunction

//derivada da primeira
function [a]=d1(x)
    //a = (%e^x)-2*x;
    //a = 3*x^2-sin(x)*%e^cos(x);
    //a = 3*(x^2)-(10*x)+1;
    //a = (0.3*x^2)-(2*%e^(2*x));
    //a = 3*x^2-9;
     //a = 6*x^2+(1/x);
     //a = 3*x^2-10*x+1;
     // a = (3*0.5)*x^2-10*x+1;
      //a = 6*x^2-2-%e^x;
      a = (%e^cos(x))*(-sin(x))+3*x^2;
endfunction

//derivada da segunda
function [a]=d2(x)
    //a = (%e^x);
    //a = 6*x+%e^cos(x)*(sin(x)^2-cos(x));
    //a = 6*x-10;
    //a = (0.6*x)-4*%e^(2*x);
    //a = 6*x;
    //a = 12*x+(1/x^2);
    //a = 6*x-10;
    //a = (6*0.5)*x-10;
    //a = 12*x-%e^x;
    a = (-%e^cos(x))*(cos(x)+sin(x)^2*%e^cos(x))+6*x;
    
   
endfunction


//metodo da bisseção

function bissecao()
    //processamento

fa = f(a);
fb = f(b);

fxn = E+1;
n = 0;

while abs(fxn) > E,
    //mprintf("a %f b %f\n",a,b);
    xn = (a+b)/2;
    fxn = f(xn);
    
  //  mprintf("XN %f e FXN: %f\n",xn,fxn);
     
    if fa*fxn > 0 then
       
        a = xn;
        fa = f(a);
    else
        b = xn;
        fb = f(b);
    end
    n = n+1;
end
     mprintf("XN %f\nNumero de iterações: %d\nF(XN) = %f",xn,n,fxn);
    //mprintf("Numero de iterações foi: %d\n",n);

endfunction







//-------------------------------------------------------------
//METODO DAS CORDAS

function cordas()
 
fa = f(a);
fb = f(b);

fxn = E+1;
n = 0;

while abs(fxn) > E,
    
    xn = ((a*fb)-(b*fa))/(fb-fa);
    
    fxn = f(xn);
    
     //caso I senão caso II
    if fxn*fa > 0 then
        a = xn;
        fa = f(a);
    else
        b = xn;
        fb = f(b);
    end
    mprintf("XN %f e FXN: %f a:%f b:%f\n",xn,fxn,a,b);
    n = n+1;
end
 //mprintf("Numero de iterações foi: %d\n",n);
  mprintf("XN %f\nNumero de iterações:%d\nF(XN) = %f",xn,n,fxn);
endfunction





//-------------------------------------------------------------
//metodo de Newton
//função 


function newton()
    
md = (a+b)/2;
xn = a;

if d1(md)*d2(md) > 0 then
    disp(d1(md),d2(md));
    xn = b;  
else
    xn = a; 
end

n = 0;
fx = E+1;

while abs(fx) > E,
    
    mprintf("XN %f e FXN: %f a:%f b:%f\n",xn,fx,a,b);
    xn = xn-(f(xn)/d1(xn));
    fx = f(xn);
    n = n+1;
end
mprintf("\n XN %f\nNumero de iterações:%d\nF(XN) = %f",xn,n,fx);

endfunction

if (f(a)*f(b)) > 0 then
    mprintf("erro %f %f",f(a),f(b))
    //exit;
end

mprintf("\nMÉTODOS PARA ENCONTRAR A RAÍZ DE UMA FUNÇÃO\n");

mprintf("--------------------------------------------\n");
mprintf("\nCORDAS\n");

cordas();

mprintf("\n--------------------------------------------\n");

mprintf("\n\nBISSEÇÃO\n");

bissecao();

mprintf("\n--------------------------------------------\n");
mprintf("\n\NEWTON\n");

newton();
mprintf("\n--------------------------------------------\n");
// primeiro elemento é -15
// incremetno 0.1
//ultimo elemento 15

//x=-%pi:0.1:%pi;
//plot(x,f(x));
//
//grafico(-%pi,%pi);
