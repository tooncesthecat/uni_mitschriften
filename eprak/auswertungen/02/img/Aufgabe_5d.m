close all;
clear all;

data=importdata('bode_5d_20000.txt');

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
xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Gain in dB','Fontsize',15)
title('Bode-Diagramm Koaxial dB','Fontsize',15)
grid on
set(gca,'Fontsize',15);

figure (2)
semilogx(f,U,'*')
xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Gain in $\displaystyle\frac{U_{out}}{U_{in}}$','interpreter','latex','Fontsize',15)
title('Bode-Diagramm Koaxial U_{out}/U_{in}$','Fontsize',15)
grid on
set(gca,'Fontsize',15);

figure (3)
semilogx(f,ph,'*')
xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Phase in \circ','Fontsize',15)
title('Bode-Diagramm Koaxial Phase','Fontsize',15)
grid on
set(gca,'Fontsize',15);