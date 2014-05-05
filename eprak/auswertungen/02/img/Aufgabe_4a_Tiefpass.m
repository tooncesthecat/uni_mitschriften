close all;
clear all;

data=importdata('bode_4a.txt');

%Frequenz
f=data(:,1);
%Gain dB
db=data(:,2);
%Gain U_out/U_in
U=data(:,3);
%phase
ph=data(:,4);

x=(10^2:1:10^6);
y=zeros(1,length(x));

L=10*10^-3;
C=10*10^-8;

for i=1:length(x)
    y(i)=sqrt((1/(1-(2*pi*x(i))^2*L*C))^2);
end


%Plots
figure (1)
semilogx(f,db,'*')
xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Gain in dB','Fontsize',15)
title('Bode-Diagramm Tiefpass 2. Ordnung dB','Fontsize',15)
grid on
set(gca,'Fontsize',15);
hold on
semilogx(x,20*log10(y),'r')
legend('Messwerte','erwarteter Verlauf')

figure (2)
semilogx(f,U,'*')
xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Gain in $\displaystyle\frac{U_{out}}{U_{in}}$','interpreter','latex','Fontsize',15)
title('Bode-Diagramm Tiefpass 2. Ordnung U_{out}/U_{in}','Fontsize',15)
grid on
hold on
semilogx(x,y,'r')
ylim([0 14])
xlim([10^2 10^6])
set(gca,'Fontsize',15);
legend('Messwerte','erwarteter Verlauf')

figure (3)
semilogx(f,ph,'*')
xlabel('Frequenz in Hz','Fontsize',15)
ylabel('Phase in \circ','Fontsize',15)
title('Bode-Diagramm Tiefpass 2. Ordnung Phase','Fontsize',15)
grid on
hold on
set(gca,'Fontsize',15);