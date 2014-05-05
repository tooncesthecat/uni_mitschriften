close all;
clear all;

data=importdata('2b_bode_hoch.txt');

%Frequenz
f=data(:,1);
%Gain dB
db=data(:,2);
%Gain U_out/U_in
U=data(:,3);
%phase
ph=data(:,4);

%Theoriekurve U/U
C=100*10^-9;
R=1000;
x1=(10^2:1:10^6);
y1=zeros(1,length(x1));

for i=1:length(x1)
    y1(i)=(2*pi*x1(i)*C*R)/sqrt(1+(2*pi*x1(i)*C*R)^2);
end

%Theoriekurve phase
x2=(10^2:1:10^6);
y2=zeros(1,length(x2));

for i=1:length(x2)
    y2(i)=atand(1/(2*pi*x2(i)*C*R));
end

%Plots
figure (1)
semilogx(f,db,'*')
xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Gain in dB','Fontsize',15)
title('Bode-Diagramm Hochpass dB','Fontsize',15)
grid on
hold on
semilogx(x1,20*log10(y1),'r')
legend('Messwerte','erwarteter Verlauf','Fontsize',15)
set(gca,'Fontsize',15);
xlim([10^2 10^6])
ylim([-25 2])

figure (2)
semilogx(f,U,'*')
xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Gain in $\displaystyle\frac{U_{out}}{U_{in}}$','interpreter','latex','Fontsize',15)
title('Bode-Diagramm Hochpass U_{out}/U_{in}','Fontsize',15)
grid on
hold on
semilogx(x1,y1,'r')
legend('Messwerte','erwarteter Verlauf','Location','Southeast','Fontsize',15)
set(gca,'Fontsize',15);
xlim([10^2 10^6])
ylim([0 1.1])

figure (3)
semilogx(f,ph,'*')
xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Phase in \circ','Fontsize',15)
title('Bode-Diagramm Hochpass Phase','Fontsize',15)
grid on
hold on
semilogx(x2,y2,'r')
legend('Messwerte','erwarteter Verlauf','Fontsize',15)
set(gca,'Fontsize',15);
xlim([10^2 10^6])