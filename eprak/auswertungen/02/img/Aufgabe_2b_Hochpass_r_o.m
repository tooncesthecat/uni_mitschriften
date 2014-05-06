close all;
clear all;

data=importdata('2b_bode_hoch.txt');

%Frequenz
f=data(:,1);
%Gain dB
db=data(:,2);

f=log10(f(f<1500));
db=db(db<-3.4);

m=18.08;
t=-59.99;

x=[2 3.2];
y=m*x+t;

dy=y(2)-y(1)

plot(f,db,'*')
hold on
plot(x,y,'r')

grid on
xlabel('log f','Fontsize',15)
ylabel('Gain in dB','Fontsize',15)
legend('Messwerte','Geradenfit','Fontsize',15,'Location','Southeast')
xlim([2 3.2])
set(gca,'Fontsize',15);
title('Geradenfit Hochpass')
