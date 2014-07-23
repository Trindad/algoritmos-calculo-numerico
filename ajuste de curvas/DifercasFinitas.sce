//metodo de Diferenças Finitas
clc
clear
format (6)

//x = [0 0.5 1 1.5];
//y = [1 1.6487 2.7182 4.4816];
//ponto = 1.3;
//n = 4;

//x = [0 1 3];
//y = [1 3 1];
//ponto = 2.1;
//n = 3;

//x = [1950 1960 1970 1980];
//y = [352.724 683.908 1235.030 1814.990];
//ponto = 1975;
//n = 4;
//x = [0 15 30 45 60];
//y = [112.50 154.50 195 171 95.5];
//n = 5;
//ponto = 50;

x = [0 1 2 3 4];
y = [1 7.38 54.6 403.4 2980.96];
ponto = 2.1;
n = 5;

// para quando utilizar uma função
function [eixoY] = calculaEixoY(x)
    
    for i = 1: length(x)
        //y(i) = %e^x(i);
        eixoY(i) = (x(i)^2)-(2*x(i))+1;
        //disp(y(i));
    end
endfunction

function [resultado] = diferencasFinitas(x,y,ponto,n)
    
     h = (abs(x(1)-x(2)));
     z = (ponto-x(1))/h;
     
    
     temp = 1;
     
     for i = 1:length(x)
         dd(i,1) = y(i);
     end
     for i = 2:length(x)
         
        for j = 2:i
            
          dd(i,j)=(dd(i,j-1)-dd(i-1,j-1));
          
        end
        
     end
     

     aux = z*dd(2,2);
     resultado = y(1)+aux;
    
    // disp(resultado);
      printf("%f\n",dd(2,2)); 
     for i = 3: n 
          
         f = factorial(i-1);
         
         aux = z;
         
         for k = 2: i-1
             
             //printf("k: %f  z: %f aux: %f\n",k,z,aux);
             aux = aux*(z-(k-1));
             
         end
         
         aux = aux/f;
         
         //printf("resultado: %f aux: %f fatorial: %f\n",resultado,aux,f);
         //disp((dd(i,i))*(aux));
         
         resultado = resultado + (dd(i,i))*(aux);
         printf("%f\n",dd(i,i)); 
      end
      
     printf("\n Solução = %f\n\nTabela de Difereças Finitas:\n",resultado);
     dd=[x' dd];
     
     disp(dd); 

endfunction


resultado = diferencasFinitas(x,y,ponto,n);


//x1 = 0:0.5:1.5;

//plot(%e^x1); // transposto, pois 
