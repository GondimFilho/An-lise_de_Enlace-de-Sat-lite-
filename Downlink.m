%criando as caixas de dialogo 

EIRPrefsat=input('digite a EIRP');
VGb=input('vantagem geografica de belem');
Phpa=input('digite o valor  de Phpa');
BW=input('digite o valor  de BW em MHz');
Lt= input('digite o valor de lt');
T=input('digite o valor de T');
ATM=input('digite o valor de ATM');
Lr=input('digite o valor de Lr');
R0= input('digite o valor de R0');
d= input('digite o valor de d');
Kb= input('digite o valor de Kb');
f= input('digite de f');
n=input('digite o valor de n');

%EIRP DOWNLINK

EIRPbel = EIRPrefsat +VGb;
printf('o valor de EIRP é:')
disp(EIRPbel);

%ganho da antena de transmissao

Gt=EIRPbel-Phpa+Lt;
printf('o valor de Gt é:')
disp(Gt);

%perdas adicionais

APL=20*log10(R0/35788);
printf('o valor de APL é:')
disp(APL);

%perda de espaço livre

A0=183.5+APL+20*log10(f);
printf('o valor de A0 é:')
disp(A0);

%Ganho na antena de recepção

GdBi=10*log10(109.66*n)+20*log10(d*f);
printf('o valor de GdBi é:')
disp(GdBi);



%potencia da portadora

C =EIRPbel-A0-ATM+GdBi-Lr;
printf('o valor de C é:')
disp(C);

%potencia de ruido

N = 10*log10(T)+Kb+10*log10(BW);
printf('o valor de N é:');
disp(N);

%Relação sinal/ruído

CN= C-N;
printf('o valor de CN é:');
disp(CN);
