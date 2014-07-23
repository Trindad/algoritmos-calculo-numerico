//Solução analítica: x = inv(A)*b
clear
clc
format (25)

n = 2;
A = [0.48 0.4; 0.25 0.5];
b=[0.33333 0.5];

I = eye(A); //matriz identidade
eps=10^(-2); //Precisão
x0 = [0;0]; //Solução inicial

p = 10;
x = x0;
it = 0;
i = 0; s = 0;

for i=1:n
    for s=1:n
        AA(i,s) = A(i,s)/A(i,i);
    end;
    be(i) = b(i)/A(i, i);
end;
 
AB = AA;
bc = be;
 
while p > eps & it<=1000
    it = it+1;
    x = bc - ((AB-I)*x);
    p = norm((AB*x)-bc);
    disp(x); 
end;

if(it>999) then
    printf("Não converge nesse intervalo");
else
    printf("Sucesso! Total de iteracoes %f", it);
end;