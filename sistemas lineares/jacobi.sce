// Método de Jacobi para sistemas lineares
clear
clc
printf('Resolução do sistema Ax = b por \n');
printf('Jácobi \n\n')
n=input("Ingresse com a ordem do sistema = ");
printf('\n');
printf('Matriz coeficientes do sistema \n\n')

//for i=1:n
  // for j=1:n
    //  printf('coeficiente A(%d,%d) = ', i,j ) //Definicão da matriz A
      //A(i,j)=input(" ");
   //end
//end
A = [0.25,0.5;1.44,1.2]; //coeficientes do sistema2
printf('\nVetor dos termos independientes \n\n')

for i=1:n
      printf('término b(%d) = ', i ) // Definición del vector b
      b(i)=input(' ');
end
printf("matriz ")
disp(A);
printf('\nVetor aproximação inicial\n\n')

for i=1:n
   printf('xo(%d) = ', i ) // define aproximação inicial
   xo(i)=input(' ');
end


e = 10^-2; // define a tolerância
printf('\n');

//transformação da diagonal recalculando a matriz ampliada
for i=1:n
    
   c(i) = b(i)/A(i,i); // Cálculo do vetor c
   
   for j=1:n
      if i==j T(i,j)=0; , else T(i,j)=-A(i,j)/A(i,i);, end // Cálculo da matriz T
   end
end
//disp(c);
//disp(T);

Er = A*xo-b;
iter = 0;

while norm(Er,'inf') >= e
   
   x = T*xo+c;
   xo=x;
   Er = A*xo-b;
   //matriz não converge
   if iter > 200 then
       break;
   end
   iter= iter+1;
end
mprintf("iterações: %d",iter);
//imprime x1 e x2 quando o erro é menos que o epson
disp(x);