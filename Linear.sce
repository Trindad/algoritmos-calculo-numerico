clc
clear
format (25)


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

A = [295 300 320 340;1 1 1 1];
b = [606 613 640 660];


 x = inv(A)*b;
 
 disp(x);