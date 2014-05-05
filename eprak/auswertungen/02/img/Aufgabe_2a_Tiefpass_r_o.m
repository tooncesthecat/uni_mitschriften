close all;
clear all;

data=importdata('2a_bode_tief.txt');

%Frequenz
f=data(:,1);
%Gain dB
db=data(:,2);

f=log10(f(f>1500));
db=db(24:76);

m=-19.12;
t=60.06;

x=[log10(10^4) log10(10^6)];
y=m*x+t;

dy=y(2)-y(1)

plot(f,db,'*')
hold on
plot(x,y)
xlim([4 6])
grid on
xlabel('log f','Fontsize',15)
ylabel('Gain in dB','Fontsize',15)
legend('Messwerte','Geradenfit')
set(gca,'Fontsize',15);
title('Geradenfit für Tiefpass')