//metodo de Lagrange
clc
clear
format (7)

//x = [0 0.5 1 1.5];
//y = [1 1.6487 2.7182 4.4816];
//ponto = 1.3;
//n = 4;

//x = [0 0.2 0.4 0.5];
//y = [0 2.008 4.064 5.125];
//ponto = 0.3;
//n = 4;

//x = [0.0, 0.5,1 ,1.5];
//y = [1 1.6487 2.7182 4.4816];
//ponto = 1.3;
//n = 4;

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

//4
//x =[0 8 20 30 45];
//y =[0 52.032 160.75 275.961 370.276];
//ponto = 23;
//n = 5;

//3
//x =[0 8 20 30];
//y =[0 52.032 160.75 275.961];
//ponto = 23;
//n = 4;

//2
//x =[8 20 30];
//y =[52.032 160.75 275.961];
//ponto = 23;
//n = 3;

x = [0 1 2 3 4];
y = [1 7.38 54.6 403.4 2980.96];
ponto = 2.1;
n = 5;


function [solucao] = Lagrange(x,y,ponto,n)
    
    solucao = 0;
    auxiliar = 1;
    temporario = 1;
    
    for i = 1: n
        
        for j = 1: n
            
            if j <> i then
                
                auxiliar = auxiliar * (ponto-x(j));
                //disp(auxiliar);
            end
        end
        
        for j = 1:n
            
            if j <> i then
                temporario = temporario* (x(i)-x(j));
            end
            
        end
        disp(y(i)*(auxiliar/temporario));
        solucao = solucao + ( y(i)*(auxiliar/temporario));

        //disp(solucao);
        auxiliar = 1;
        temporario = 1;
    end
    
    //disp(solucao);
    
endfunction

solucao = Lagrange(x,y,ponto,n);

printf("Solução por Lagrange: %f", solucao);

//Plotando 
//delta=0.1;

//n_pontos=15;

//x1 = 0:delta:(n_pontos-1)*delta; 
//x2 = 0:delta:(n_pontos-1)*delta;
//y1 = rand(0:n_pontos-1);         
//y2=rand(0:n_pontos-1);

//plot([x1;x2]',[y1;y2]');

resultado = (160.45)+(23-20)*((275.961-160.45)/10);
printf("\nresultado:%f",resultado)
disp(resultado);