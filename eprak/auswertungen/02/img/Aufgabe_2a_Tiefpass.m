close all;
clear all;

data=importdata('2a_bode_tief.txt');

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
    y1(i)=1/sqrt(1+(2*pi*x1(i)*C*R)^2);
end

%Theoriekurve Phase
x2=(10^2:1:10^6);
y2=zeros(1,length(x2));

for i=1:length(x2)
    y2(i)=-atand(2*pi*x1(i)*C*R);
end

%Grenzfrequenz suchen
gf=ph(ph>=-46);
gf=gf(gf<=-44);

fc=1/(2*pi*C*R)

%Plots
figure (1)
semilogx(f,db,'*')
xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Gain in dB','Fontsize',15)
title('Bode-Diagramm Tiefpass dB','Fontsize',15)
grid on
set(gca,'Fontsize',15);
hold on
semilogx(x1,20*log10(y1),'r')
legend('Messwerte','erwarteter Verlauf','Fontsize',15)

figure (2)
semilogx(f,U,'*')
xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Gain in $\displaystyle\frac{U_{out}}{U_{in}}$','interpreter','latex','Fontsize',15)
title('Bode-Diagramm Tiefpass U_{out}/U_{in}','Fontsize',15)
hold on
grid on
semilogx(x1,y1,'r')
legend('Messwerte','erwarteter Verlauf','Fontsize',15)
set(gca,'Fontsize',15); 

figure (3)
semilogx(f,ph,'*')
xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Phase in \circ','Fontsize',15)
title('Bode-Diagramm Tiefpass Phase','Fontsize',15)
grid on
hold on
semilogx(x2,y2,'r')
legend('Messwerte','erwarteter Verlauf','Fontsize',15)
set(gca,'Fontsize',15); 