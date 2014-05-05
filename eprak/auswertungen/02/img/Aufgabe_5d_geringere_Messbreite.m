close all;
clear all;

data=importdata('bode_5d.txt');

%Frequenz
f=data(:,1);
%Gain dB
db=data(:,2);
%Gain U_out/U_in
U=data(:,3);
%phase
ph=data(:,4);

%Plots
figure (1)
semilogx(f,db,'*')
xlabel('Frequenz in Hz')
ylabel('Gain in dB')
title('Bode-Diagramm Koaxial dB')
grid on


figure (2)
semilogx(f,U,'*')
xlabel('Frequenz in Hz')
ylabel('Gain in $\displaystyle\frac{U_{out}}{U_{in}}$','interpreter','latex')
title('Bode-Diagramm Koaxial $\displaystyle\frac{U_{out}}{U_{in}}$','interpreter','latex')
grid on

figure (3)
semilogx(f,ph,'*')
xlabel('Frequenz in Hz')
ylabel('Phase in \circ')
title('Bode-Diagramm Koaxial Phase')
grid on