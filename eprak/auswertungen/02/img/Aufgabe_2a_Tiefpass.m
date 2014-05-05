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

%Theoriekurve
C=100*10^-9;
R=1000;
x=(10^2:0.1:10^6);
y=zeros(1,length(x));

for i=1:length(x)
    y(i)=1/sqrt(1+(2*pi*x(i)*C*R)^2);
end

%Grenzfrequenz suchen
gf=ph(ph>=-46);
gf=gf(gf<=-44);

fc=1/(2*pi*C*R)

%Plots
figure (1)
semilogx(f,db,'*')
xlabel('Frequenz in Hz')
ylabel('Gain in dB')
title('Bode-Diagramm Tiefpass dB')
grid on


figure (2)
semilogx(f,U,'*')
xlabel('Frequenz in Hz')
ylabel('Gain in $\displaystyle\frac{U_{out}}{U_{in}}$','interpreter','latex')
title('Bode-Diagramm Tiefpass $\displaystyle\frac{U_{out}}{U_{in}}$','interpreter','latex')
hold on
grid on
semilogx(x,y,'r')
legend('Messwerte','erwarteter Verlauf')

figure (3)
semilogx(f,ph,'*')
xlabel('Frequenz in Hz')
ylabel('Phase in \circ')
title('Bode-Diagramm Tiefpass Phase')
grid on