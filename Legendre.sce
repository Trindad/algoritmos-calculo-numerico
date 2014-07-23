//metodo de legendre
clc
clear
format (6)

//x = [0 0.5 1 1.5];
//y = [1 1.6487 2.7182 4.4816];
//ponto = 1.3;
//n = 4;

//n = 3;
//n = 2; //grau do polinomio

//x = [0 0.2 0.4 0.5];
//y = [0 2.008 4.064 5.125];
//ponto = 0.3;
//n = 4;

//x = [1950 1960 1970 1980];
//y = [352.724 683.908 1235.030 1814.990];
//ponto = 1975;
//n = 4;
   
//x = [0 1 2 3 4];
//y = [1 0 1 4 9];
//n = 5;
//ponto = 1.5;

x = [0 1 2 3 4];
y = [1 7.38 54.6 403.4 2980.96];
x = 5;

function [resultado] = Legendre(x,y,ponto,n)
    
    temp = 1;
    resultado = 0;
    
    for i = 1:n
        
       for j = 1:n
           
           if j <> i then
               
                temp = temp*( (ponto-x(j)) / (x(i)-x(j)) ); 
               
           end
         
        end  
       // disp(temp);
        resultado = resultado + temp*y(i); 
        //disp(resultado);
        temp = 1;
    end
endfunction;

resultado = Legendre(x,y,ponto,n);
//imprime resultado
printf("P%d(x):%f",n,resultado);