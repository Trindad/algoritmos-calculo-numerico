clc
clear
format (25)

//A = [8 22 8;22 108 57;8 57 36];z = [57 92 -5];
//x = inv(A)*z';
//disp(x);
//Ajustes de curvas para geodésica

N = 43;

//A = [1 10^2 13;//abilenecore
//    1 17^2 20;//arnes
//    1 20^2 32;//arpanet
//    1 15^2 22;//austria
//    1 15^2 22;//austria_aconet
//    1 10^2 11;//bren
//    1 23^2 24;//bulgaria
//    1 19^2 26;//canarie
//    1 29^2 45//cernet
//    1 12^2 19;//cesnet
//    1 12^2 19;//cesnet1
//    1 11^2 14;//compuserv
//    1 75^2 97;//coronet
//    1 37^2 57;//cost37
//    1 24^2 40;//cox
//    1 19^2 37;//eon
//    1 16^2 27;//garr-b-changed
//    1 32^2 51;//geant2
//    1 17^2 26;//germany
//    1 15^2 23;//hibernia
//    1 31^2 47;//ibn31
//    1 56^2 61;//internet2
//    1 14^2 29;//italy
//    1 10^2 11;//Learn
//    1 33^2 37;//loni
//    1 19^2 24;//memorex
//    1 33^2 41;//metrona
//    1 15^2 19;//mzima
//    1 26^2 31;//newnet
//    1 19^2 23;//nlr
//    1 14^2 21;//nsfnet
//    1 38^2 54;//Omi1
//    1 38^2 54;//omnicon
//    1 21^2 25;//pionier
//    1 26^2 36;//portugal
//    1 17^2 28;//redisnet
//    1 27^2 35;//renater
//    1 10^2 12;//rnp
//    1 25^2 28;//sanet
//    1 20^2 24;//sweden
//    1 100^2 171;//usa100
//    1 12^2 17;//vbns
//    1 9^2 12; //vianet
//    ];
A = [
1 10 13^2;//abilenecore
 1 17 20^2;//arnes
 1 20 32^2;//arpanet
 1 15 22^2;//austria
 1 15 22^2;//austria_aconet
 1 10 11^2;//bren
 1 23 24^2;//bulgaria
 1 19 26^2;//canarie
 1 29 45^2;//cernet
 1 12 19^2;//cesnet
 1 12 19^2;//cesnet1
 1 11 14^2;//compuserv
 1 75 97^2;//coronet
 1 37 57^2;//cost37
 1 24 40^2;//cox
 1 19 37^2;//eon
 1 16 27^2;//garr-b-changed
 1 32 51^2;//geant2
 1 17 26^2;//germany
 1 15 23^2;//hibernia
 1 31 47^2;//ibn31
 1 56 61^2;//internet2
 1 14 29^2;//italy
 1 10 11^2;//Learn
 1 33 37^2;//loni
 1 19 24^2;//memorex
 1 33 41^2;//metrona
 1 15 19^2;//mzima
 1 26 31^2;//newnet
 1 19 23^2;//nlr
 1 14 21^2;//nsfnet
 1 38 54^2;//Omi1
 1 38 54^2;//omnicon
 1 21 25^2;//pionier
 1 26 36^2;//portugal
 1 17 28^2;//redisnet
 1 27 35^2;//renater
 1 10 12^2;//rnp
 1 25 28^2;//sanet
 1 20 24^2;//sweden
 1 100 171^2;//usa100
 1 12 17^2;//vbns
 1 9 12^2//vianet
 ];
//z = [12.583333,
//    74.833333,
//    35.400000,
//    40.333333,
//    12.600000,
//    11.500000,
//    105.000000,
//    78.333333,
//    17.833333,
//    19.166667,
//    1034.951804,
//    205.248413,
//    120.933333,
//    44.828571,
//    43.466667,
//    207.207143,
//    47.933333,
//    31.778571,
//    143.911111,
//    631.416667,
//    34.983333,
//    11.500000,
//    247.666667,
//    67.833333,
//    239.500000,
//    31.500000,
//    123.000000,
//    57.333333,
//    17.166667,
//    171.041667,
//    171.041667,
//    93.500000,
//    135.300000,
//    75.300000,
//    176.333333,
//    10.500000,
//    126.833333,
//    53.000000,
//    1720.564850,
//    21.166667,
//    13.000000,
//    166.433333
//    ];
//    
//z = [log(5.700000),//abilenecore
//    log(16.176471),//arnes
//    log(16.650000),//arpanet
//    log(8.200000),//austria
//    log(10.400000),//austria-aconet
//    log(6.000000),//bren
//    log(42.391304),//bulgaria
//    log(18.315789),//canarie
//    log(25.965517),//cernet
//    log(5.666667),//cesnet
//    log(5.666667),//cesnet1
//    log(6.090909),//compuserv
//    log(211.720000),//coronet
//    log(49.297297),//cost37
//    log(19.750000),//cox
//    log(11.947368),//eon
//    log(10.187500),//garr-b-changed
//    log(35.906250),//geant2
//    log(13.588235),//germany
//    log(11.200000),//hibernia
//    log(47.612903),//ibn31
//    log(198.571429),//internet2
//    log(5.642857),//italy
//    log(6.000000),//Learn
//    log(71.424242),//loni
//    log(20.421053),//memorex
//    log(60.333333),//metrona
//    log(12.333333),//mzima
//    log(39.461538),//newnet
//    log(22.684211),//nlr
//    log(7.428571),//nsfnet
//    log(64.815789),//omi1
//    log(64.815789),//ominicom
//    log(23.333333),//pionier
//    log(33.000000),//portugal
//    log(9.647059),//redirisnet
//    log(28.851852),//renater
//    log(5.800000),//rnp
//    log(41.360000),//sanet
//    log(25.700000),//sweden
//    log(275.710000),//usa100
////    log(7.500000),//vbns
////    log(3.888889) //vianet
////    ];
//
//z = [1/5.700000,//abilenecore
//    1/16.176471,//arnes
//    1/16.650000,//arpanet
//    1/8.200000,//austria
//    1/10.400000,//austria-aconet
//    1/6.000000,//bren
//    1/42.391304,//bulgaria
//    1/18.315789,//canarie
//    1/25.965517,//cernet
//    1/5.666667,//cesnet
//   1/5.666667,//cesnet1
//    1/6.090909,//compuserv
//    1/211.720000,//coronet
//    1/49.297297,//cost37
//    1/19.750000,//cox
//    1/11.947368,//eon
//    1/10.187500,//garr-b-changed
//    1/35.906250,//geant2
//    1/13.588235,//germany
//    1/11.200000,//hibernia
//    1/47.612903,//ibn31
//    1/198.571429,//internet2
//    1/5.642857,//italy
//    1/6.000000,//Learn
//    1/71.424242,//loni
//    1/20.421053,//memorex
//    1/60.333333,//metrona
//    1/12.333333,//mzima
//    1/39.461538,//newnet
//    1/22.684211,//nlr
//    1/7.428571,//nsfnet
//    1/64.815789,//omi1
//    1/64.815789,//ominicom
//    1/23.333333,//pionier
//    1/33.000000,//portugal
//   1/9.647059,//redirisnet
//   1/28.851852,//renater
//   1/ 5.800000,//rnp
//   1/41.360000,//sanet
//   1/25.700000,//sweden
//    1/275.710000,//usa100
//   1/7.500000,//vbns
//  1/3.888889 //vianet
//  ];
z = [5.700000,//abilenecore
    16.176471,//arnes
    16.650000,//arpanet
    8.200000,//austria
    10.400000,//austria-aconet
    6.000000,//bren
    42.391304,//bulgaria
    18.315789,//canarie
    25.965517,//cernet
    5.666667,//cesnet
   5.666667,//cesnet1
    6.090909,//compuserv
    211.720000,//coronet
    49.297297,//cost37
    19.750000,//cox
    11.947368,//eon
    10.187500,//garr-b-changed
    35.906250,//geant2
    13.588235,//germany
    11.200000,//hibernia
    47.612903,//ibn31
    198.571429,//internet2
    5.642857,//italy
    6.000000,//Learn
    71.424242,//loni
    20.421053,//memorex
    60.333333,//metrona
    12.333333,//mzima
    39.461538,//newnet
    22.684211,//nlr
    7.428571,//nsfnet
    64.815789,//omi1
    64.815789,//ominicom
    23.333333,//pionier
    33.000000,//portugal
   9.647059,//redirisnet
   28.851852,//renater
    5.800000,//rnp
   41.360000,//sanet
   25.700000,//sweden
    275.710000,//usa100
   7.500000,//vbns
  3.888889 //vianet
  ]; 
x = inv(A'*A)*(A'*z);
printf("Equação do plano\n");
disp(x);
//printf("\n\nf(x) = %d+%dx+%dy",x(1),x(2),x(3));

printf("\n\n");

A = [10 13;
17 20;
20 32;
15 22;
15 22;
10 11;
23 24;
19 26;
29 45;
12 19;
12 19;
11 14;
75 97;
37 57;
24 40;
19 37;
16 27;
32 51;
17 26;
15 23;
31 47;
56 61;
14 29;
10 11;
33 37;
19 24;
33 41;
15 19;
26 31;
19 23;
14 21;
38 54;
38 54;
21 25;
26 36;
17 28;
27 35;
10 12;
25 28;
20 24;
100 171;
12 17;
9 12
];

b = [5.700000,//abilenecore
    16.176471,//arnes
    16.650000,//arpanet
    8.200000,//austria
    10.400000,//austria-aconet
    6.000000,//bren
    42.391304,//bulgaria
    18.315789,//canarie
    25.965517,//cernet
    5.666667,//cesnet
    5.666667,//cesnet1
    6.090909,//compuserv
    211.720000,//coronet
    49.297297,//cost37
    19.750000,//cox
    11.947368,//eon
    10.187500,//garr-b-changed
    35.906250,//geant2
    13.588235,//germany
    11.200000,//hibernia
    47.612903,//ibn31
    198.571429,//internet2
    5.642857,//italy
    6.000000,//Learn
    71.424242,//loni
    20.421053,//memorex
    60.333333,//metrona
    12.333333,//mzima
    39.461538,//newnet
    22.684211,//nlr
    7.428571,//nsfnet
    64.815789,//omi1
    64.815789,//ominicom
    23.333333,//pionier
    33.000000,//portugal
    9.647059,//redirisnet
    28.851852,//renater
    5.800000,//rnp
    41.360000,//sanet
    25.700000,//sweden
    275.710000,//usa100
    7.500000,//vbns
    3.888889 //vianet
    ];
media = 0.0;
t = 0;
w = 0;


for i = 1:N
    media = media+b(i);
end

media = media/N;

//a1 = x(1);
//a2 = x(2);
//a3 = x(x3);
//a1 = %e^x(1);
//a2 = x(2);
t1 = 0;
w1 = 0;
for i = 1:N
  
    //nova = x(1)+x(2)*A(i,1)^2+x(3)*A(i,2);
    //nova = %e^(a2*A(i,1))+a1*A(i,2);
    nova =  x(1)+x(2)*A(i,1)+x(3)*A(i,2)^2;
    new = -85-2*A(i,2)+9.6*A(i,1);
    printf("%d %d ",A(i,1),A(i,2));
    printf("ŷ = %f y = %f %f\n",nova,b(i),new);
   
    t1 = t1+(b(i)-new)^2;
    w1 = w1+(b(i)-media)^2;
    
    t = t+(b(i)-nova)^2;
    w = w+(b(i)-media)^2;
   
end
R2 = 1-(t/w);

printf("\nR2:1-(%f/%f) = %f\n",t,w,R2);
