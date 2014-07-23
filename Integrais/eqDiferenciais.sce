clc
clear
format (10)

h = 0.1;
limite = 1/h;


x0 = 0;
y0 = 1;


function Integral()

 printf("Calculando valor exato -- Forma analitica : \n");
 xi = x0+h;

 for i = 1:limite
      //yi = (xi^2)/2+1;
      //yi = 3/2*(xi^2)+4*xi;
      //yi = ((xi+1)^4+5*(xi+1)^2)/2;
      yi = log(xi)+2;
      printf("x=%f y=%f\n",xi,yi);
      xi = xi+h;
      y=xi*exp(xi)+2*xi+2;
 end
  
endfunction

function [y] = derivada(xi,yi)
    //y = x;
    //y = 3*x+4;
    //y = (2*yi/(xi+1))+(xi+1)^3;
   // y = yi-2*xi/yi;
    //y = xi-yi+2;
    //y = 1/xi;
    //y = yi*exp(xi)-xi^2+1;
    y=xi*exp(xi)+2*xi+1;
endfunction

function euler()
    
    printf("Utilizando Método de Euler\n");
    yn = y0;
    xn = x0;
    printf("x = %f y = %f\n",xn,yn); 
    for i = 2: limite+1
        
        yi= (h*derivada(xn,yn))+yn;
        xn = xn+h;
        yn = yi;  
        printf("x = %f y = %f\n",xn,yi);     
    end
    
endfunction

function eulerMelhorado()
    
    printf("Utilizando Método de Euler Melhorado\n");
    yn = y0;
    xn = x0;
    printf("x = %f y = %f\n",xn,yn); 
    
    for i = 2: limite+1
        
        k1 =derivada(xn,yn);
        k2 = derivada(xn+h,yn+h*derivada(xn,yn));
        yi = (h*(k1+k2))/2+yn;
        xn = xn+h;
        yn = yi;  
        
        printf("x = %f y = %f\n",xn,yi);     
    end
endfunction


function eulerModificado()
    
    printf("Utilizando Método de Euler Modificado\n");
    yn = y0;
    xn = x0;
    printf("x = %f y = %f\n",xn,yn); 
    
    for i = 2: limite+1
        
        k1 =derivada(xn,yn);
        k2 = derivada(xn+h/2,yn+h/2*derivada(xn,yn));
        yi = (h*(k1+k2))/2+yn;
        xn = xn+h;
        yn = yi;  
        
        printf("x = %f y = %f\n",xn,yi);     
    end
endfunction


function rungeKutta3()
    
    printf("Utilizando Método de Runge Kutta 3° ordem\n");
    yn = y0;
    xn = x0;
     printf("x = %f y = %f\n",xn,yn); 
    for i = 2: limite+1
        
        k1 =derivada(xn,yn);
        k2 = derivada(xn+h/2,yn+k1*h/2);
        k3 = derivada(xn+h,yn+2*h*k2-h*k1);
        yi = (h*(k1+4*k2+k3))/6+yn;
        xn = xn+h;
        yn = yi;  
        
       printf("x = %f y = %f\n",xn,yi);       
    end
endfunction

function rungeKutta4()
    
    printf("Utilizando Método de Runge Kutta 4°\n");
    yn = y0;
    xn = x0;
    printf("x = %f y = %f\n",xn,yn); 
    for i = 2: limite+1
        
         k1 =derivada(xn,yn);
        k2 = derivada(xn+h/2,yn+k1*h/2);
        k3 = derivada(xn+h/2,yn+k2*h/2);
        k4 = derivada(xn+h,yn+h*k3);
        yi = (h*(k1+2*k2+2*k3+k4))/6+yn;
        xn = xn+h;
        yn = yi;  
        
        printf("x = %f y = %f\n",xn,yi);          
    end
endfunction

Integral();
euler();
//eulerMelhorado();
//eulerModificado();
//rungeKutta3();
//rungeKutta4();

printf("\nMétodo de EQ de 2º ordem\n");

h = 0.2;
n = 5;

//A = [
//     2*h^2-2,1+h,0,0,0,0,0,0,0;
//    1-h,2*h^2-2,1+h,0,0,0,0,0,0;
//    0,1-h,2*h^2-2,1+h,0,0,0,0,0;
//    0,0,1-h,2*h^2-2,1+h,0,0,0,0;
//    0,0,0,1-h,2*h^2-2,1+h,0,0,0;
//    0,0,0,0,1-h,2*h^2-2,1+h,0,0;
//    0,0,0,0,0,1-h,2*h^2-2,1+h,0;
//    0,0,0,0,0,0,1-h,2*h^2-2,1+h;
//    0,0,0,0,0,0,0,1-h,2*h^2-2
//    ];
////b = [h^3,2*h^3,3*h^3,4*h^3,5*h^3,6*h^3,7*h^3,(n-2)*h^3,(n-1)*h^3+h+1];
b = [0,0,0,h+1];
//
// A=[5*h^2-2,1+2*h,0,0,0,0,0,0,0;
//    1-2*h,5*h^2-2,1+2*h,0,0,0,0,0,0;
//    0,1-2*h,5*h^2-2,1+2*h,0,0,0,0,0;
//    0,0,1-2*h,5*h^2-2,1+2*h,0,0,0,0;
//    0,0,0,1-2*h,5*h^2-2,1+2*h,0,0,0;
//    0,0,0,0,1-2*h,5*h^2-2,1+2*h,0,0;
//    0,0,0,0,0,1-2*h,5*h^2-2,1+2*h,0;
//    0,0,0,0,0,0,1-2*h,5*h^2-2,1+2*h;
//    0,0,0,0,0,0,0,1-2*h,5*h^2-2
//    ]
   
A=[  2*h^2-3,1+h,0,0;
    1,2*h^2-3,1+h,0;
    0,1,2*h^2-3,1+h;
    0,0,1,2*h^2-3
]
//b=[8*%e^h*h^2,2*8*%e^h*h^2,3*8*%e^h*h^2,4*8*%e^h*h^2,5*8*%e^h*h^2,6*8*%e^h*h^2,7*8*%e^h*h^2,(n-2)*8*%e^h*h^2,(n-1)*8*%e^h*h^2+h+1];
x = inv(A)*b';

disp(x);

//xi = h;
//b = 1;
//
//while xi < b
//    yn= (2*%e^-xi)*(1-xi)+xi-2;
//    disp(yn);
//    xi=xi+h;
//end

