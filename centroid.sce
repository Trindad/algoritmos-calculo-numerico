clc
clear
format (10)

//metodo do trapezio para integração numérica

a = 0;
b = 15;

N = 10;

function [y] = f(xn)
    
 //y = (4-xn^2)-(xn+2);
 //y = 1+xn+xn^2;
 //y = xn^3;
 y = xn;
endfunction


function [A] = trapezio(x0,xn)
    
    h = abs(xn-x0)/N;
//    disp(h);
    A = 0;
    
    limite = x0+h;
    
    while limite < xn
    
       
        temp = 2*abs(f(limite));
        //printf("\nxi=%d yi=%f\n",limite,temp/2);
        A = A + temp;
       // printf("xi %f yi %f\n",limite,temp/2);
        limite = limite+h;
    end
   
    A = (h/2)*(f(x0)+A+f(xn));
    
endfunction

function centroid(area,x0,xn)
    
    h = abs(xn-x0)/N;

    limite = x0+h;
    tempX = 0;
    tempY = 0;
    
    while limite <= xn
       
        tempY = trapezio(limite-h,limite)*f(limite)/2+ tempY;
        tempX = limite*trapezio(limite-h,limite)+tempX;
        limite = limite+h;
    end
    
    yc = (tempY)/area;
    xc = (tempX)/area;
    
    disp(yc);
    disp(xc);
    
endfunction
A = trapezio(a,b);
printf("Trapezio A = %f u.a.\n",A);

centroid(A,a,b);

//A = [
//    -2+2*h^2,1+2*h,1,1,1;
//    1-2*h,-2+2*h^2,1+2*h,1,1;
//    1,1-2*h,-2+2*h^2,1+2*h,1;
//    1,1,1-2*h,-2+2*h^2,1+2*h;
//    1,1,1,1-2*h,-2+2*h^2
//    ];
//b = [h^3,2*h^3,3*h^3,4*h^3,5*h^3];