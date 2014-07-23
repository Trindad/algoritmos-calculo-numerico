// Metodo de Bisseção para e^x-x^2

clear;clc;
format (25)

E = 0.01;
w = 0;

//entradas serão as variaveis a e b

function [x]=PONTOMEDIO(a,b)
    
    x = (a+b)/2;
endfunction

i = 0;
fxn = 1.00;
m = 0.0;
//diferença entre XN anterior e atual
dif = 0.00;
//temporário para XN anterior
temp = 0.0;
a = -2;
b = 0;
// repete F(XN) > E
while abs(fxn) > E,
      
    //calcula o ponto médio
    
    m = PONTOMEDIO(a,b);
   
    dif = abs(temp - m);
    temp = m;
    if  dif > E then
        
        fxn = %e^m-m^2;
       // mprintf("FXn %f\n",fxn);
       mprintf("F(X*) %f\n",fxn);
        fm = fxn;
        fa = %e^a-a^2;
        //Se f(a) X f(m) < 0 : a raiz esta em [a,m]
        //Senão esta em [m,b]
        
        if  fa*fm < 0 then
            b = m;
        else
            a = m;
         end
    else
        break; 
    end
    i = i+1;
end
x=-15:15;
//imprime valor de m
mprintf("F(X*) %f",fxn);

//plot do gráfico
plot(%e^x-x^2)
