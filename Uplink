%iniciando o programa

clc;
clear all;
disp('PROGRAMA PARA ANALISE DE ENLACE PARA O SATELITE STAR ONE-C2');

%Criando as caixas de dialogo do prompt

VGsp= input('digite vantagem geografica de SP');
r= input('digite o valor de r');
p= input('digite o valor de p');
v= input('digite o valor de v');
(G/T)ref= input('digite o valor de GTref');
wref= input('digite o valor de wref');
ATM=input('digite o valor de ATM');
T=input('digite o valor de T');
Lr=input('digite o valor de Lr');
R= input('digite o valor de R');
R0= input('digite o valor de R0');
d= input('digite o valor de d');
Kb= input('digite o valor de Kb');
f= input('digite o valor de f');
n=input('digite o valor de n');


%langura de banda

Bw=(1+p)*r;
printf('o valor de Bw é:')
disp(Bw);



%taxa de bits;

Tbits= v*r;
printf('o valor de Tbits é:')
disp(Tbits);


%Figura de Mérito

(G/T)= (G/T)ref+VGsp;
printf('o valor de GT é:')
disp(GT);

%Densidade fluxo

W= wref - VGsp;
printf('o valor de W é:')
disp(W);

%perda por espalhamento

ASL = 151+20*log10(R);
printf('o valor de ASL é:')
disp(ASL);

%EIRP UPLINK

EIRP = ATM+ASL+W;
printf('o valor de EIRP é:')
disp(EIRP);

%Ganho transmissao
Gt=10*log10(109.66*n)+20*log10(d*f);
printf('o valor de GdBi é:')
disp(Gt);

%potencia 

Pot= EIRP+Lr-Gt;
printf('o valor de Phpa é:')
disp(Pot);

%Perda adicional de percurso

APL=20*log10(R0/35788);
printf('o valor de APL é:')
disp(APL);


%Perda do espaço livre

A0=183.5+APL+20*log10(f);
printf('o valor de A0 é:')
disp(A0);

%Ganho de recepção do Satélite

GR= (G/T)+Lr+10*log10(T);
printf('o valor de GR é:')
disp(GR);

%CT

CT=EIRP+GT-A0-ATM;
printf('o valor de CT é:')
disp(CT);

%Relação sinal/ruído

CN= CT- Kb -10log(Bw);
printf('o valor de CN é:')
disp(CN);

