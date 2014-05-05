close all;
clear all;

data1=importdata('bode_4b_2.txt');
data2=importdata('bode_4b_peak.txt');
%Frequenz
f1=data1(:,1);
%Gain dB
db1=data1(:,2);
%Gain U_out/U_in
U1=data1(:,3);
%phase
ph1=data1(:,4);

%Frequenz
f2=data2(:,1);
%Gain dB
db2=data2(:,2);
%Gain U_out/U_in
U2=data2(:,3);
%phase
ph2=data2(:,4);

%Theoriekurve Übertrag
C=1*10^-6;
L=0.1*10^-3;
R=12;

x=(10^2:1:10^6);
y=zeros(1,length(x));

for i=1:length(x)
    y(i)=abs(R)/abs(1/((1i*2*pi*x(i)*C)+1/(1i*2*pi*x(i)*L))+R);
end

%theorie phase
y2=zeros(1,length(x));

for i=1:length(x)
    y2(i)=atand(((2*pi*x(i))^3*L^2*C*R-2*pi*x(i)*L*R)/((R-((2*pi*x(i))^2*L*C*R))^2));
end

figure(1)
semilogx(f1,db1,'*')
hold on
semilogx(x,20*log10(y),'r')
semilogx(f2,db2,'*')
xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Gain in dB','Fontsize',15)
title('Bode-Diagramm Sperrkreisfilter dB','Fontsize',15)
grid on
set(gca,'Fontsize',15); 
legend('Messwerte','erwarteter Verlauf','Location','Southwest')
ylim([-20 0])

figure(2)
semilogx(f1,U1,'*')
hold on
semilogx(x,y,'r')
plot(f2,U2,'*')
xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Gain in $\displaystyle\frac{U_{out}}{U_{in}}$','interpreter','latex','Fontsize',15)
title('Bode-Diagramm Sperrkreisfilter U_{out}/U_{in}','Fontsize',15)
grid on
set(gca,'Fontsize',15);
ylim([0 1.05])
legend('Messwerte','erwarteter Verlauf','Location','Southwest')

figure(3)
semilogx(f1,ph1,'*')
hold on
semilogx(x,y2,'r')
semilogx(f2,ph2,'*')
xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Phase in \circ','Fontsize',15)
title('Bode-Diagramm Sperrkreisfilter Phase','Fontsize',15)
grid on
set(gca,'Fontsize',15);
legend('Messwerte','erwarteter Verlauf','Location','Southwest')


figure (4)
plot(f2,db2,'*')
hold on

xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Gain in dB','Fontsize',15)
title('Bode-Diagramm Sperrkreisfilter dB','Fontsize',15)
grid on
set(gca,'Fontsize',15); 

