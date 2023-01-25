%criando caixa de diálogo

u= input('digite a CNu');
d =input('digite a CNd');
%valor da interferência proposta no trabalho
i= 18;

%conversão dos valores inseridos em não dB

w=1/10^(u/10);
z= 1/10^(d/10);
x= 1/10^(i/10);

%inserção de parametros para obter os graficos

APLu=input("digite o APL de UPLINK");
APLd=input("digite o APL de DOWLINK");

%calculo da SNR total do sistema

CNt= x+w+z;
total= (CNt)^-1;
printf('a relação sinal/ruido e:');

disp(total);
printf('a relação SNR em dB:')
disp((log10(total))*10 );


%plot do grafico 

A0u=183.5+APLu+20*log10(f1);
figure(1);
plot(A0u, '-r');
grid on
legend( 'perda de percurso uplink');
xlabel('distancia em Kmz')
ylabel('Perda de Propagação (dB)')


A0d=183.5+APLd+20*log10(f1);
figure(2);
plot(A0d, '-b');
grid on
legend( 'perda de percurso downlink');
xlabel('distancia em Km')
ylabel('Perda de Propagação (dB)')
