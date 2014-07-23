//Verificar sempre se a diagonal principal é dominante sobre a diagonal secundária
clear
clc
format (25)

//n = 8;
//A = [
//    4 -1 -1 0 0 0 0 0;//p1
//    -1 4 0 -1 0 0 0 0;//p2
//    -1 0 4 -1 0 -1 0 0 ; //p3
//    0 -1 -1 4 -1 0 -1 0;//p4
//    0 0 0 -1 4 0 0 -1;//p5
//    0 0 -1 0 0 4 -1 0;//p6
//    0 0 0 -1 0 -1 4 -1;//p7
//    0 0 0 0 -1 0 -1 4;//p8
//];
//I = eye(A); //matriz identidade
//b = [95,50,80,0,30,190,110,135];
//b = [1,2,3,4.4]; 
//b = [-2, 14, 24]; //vetor de termos independentes
//eps=10^(-6); //Precisão
//x0 = [0;0;0;0;0;0;0;0]; //Solução inicial

n = 3;
//A = [0.02 1;0.012 1];
//b = [40 20];
A = [0.48,0.4,0.3333; 0.25,0.5, 1;0, 0, 2];
b=[0.666666, 1.5, 2];
eps=10^-2;
x0=[0;0;0];
p = 10;
x = x0;
x1 = x;
it=0;
i=0; s=0;
 
for i=1:n
  bc(i) = b(i)/A(i, i);
end;
 
big = 0;
num = 0;
while p >= eps & it<=1000
  for i=1:n
    num = 0;
    for j=1:n
      if j <> i then
        num = num + A(i,j)*x(j);
      end;
    end;
    x(i) = (1/A(i,i))*(b(i)-num);
  end;
  p = norm((A*x)-b');
  disp(p);
  it = it+1;
  disp(x);
end;
 printf("\n");
//disp(x);
if(it>999) then
  printf("Não converge nesse intervalo");
  abort;
else
  t = (A*x)-b';
  //disp(t);
  printf("Sucesso! Total de iteracoes %d ", it);
  
end;