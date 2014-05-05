close all;
clear all;

data=importdata('bode_4a_mit_widerstand.txt');

%Frequenz
f=data(:,1);
%Gain dB
db=data(:,2);
%Gain U_out/U_in
U=data(:,3);
%phase
ph=data(:,4);

%Theorie �bertrag
x=(10^2:1:10^6);
y=zeros(1,length(x));

L=10*10^-2;
C=10*10^-9;
R=1000;

for i=1:length(x)
    y(i)=1/sqrt((2*pi*x(i))^4*L^2*C^2+(2*pi*x(i)*R*C)^2-2*(2*pi*x(i))^2*L*C+1);
end


%Plots
figure (1)
semilogx(f,db,'*')
xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Gain in dB','Fontsize',15)
title('Bode-Diagramm Tiefpass 2. Ordnung mit Widerstand dB','Fontsize',15)
grid on
set(gca,'Fontsize',15); 
hold on
semilogx(x,20*log10(y),'r')
legend('Messwerte','erwarteter Verlauf')

figure (2)
semilogx(f,U,'*')
xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Gain in $\displaystyle\frac{U_{out}}{U_{in}}$','interpreter','latex','Fontsize',15)
title('Bode-Diagramm Tiefpass 2. Ordnung mit Widerstand U_{out}/U_{in}','Fontsize',15)
grid on
hold on
semilogx(x,y,'r')
set(gca,'Fontsize',15); 
legend('Messwerte','erwarteter Verlauf')

figure (3)
semilogx(f,ph,'*')
xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Phase in \circ','Fontsize',15)
title('Bode-Diagramm Tiefpass 2. Ordnung mit Widerstand Phase','Fontsize',15)
grid on
set(gca,'Fontsize',15); 