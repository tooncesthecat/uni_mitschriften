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

x=(90:1:42000);
y=zeros(1,length(x));

for i=1:length(x)
    y(i)=sqrt((1/(1-((x(i)*2*pi)^2*0.000000100*0.01)))^2);
end

%Plots
figure (1)
semilogx(f,db,'*')
xlabel('Frequenz in Hz')
ylabel('Gain in dB')
title('Bode-Diagramm Tiefpass 2. Ordnung dB')
grid on


figure (2)
semilogx(f,U,'*')
xlabel('Frequenz in Hz')
ylabel('Gain in $\displaystyle\frac{U_{out}}{U_{in}}$','interpreter','latex')
title('Bode-Diagramm Tiefpass 2. Ordnung $\displaystyle\frac{U_{out}}{U_{in}}$','interpreter','latex')
grid on
hold on
semilogx(x,y)

figure (3)
semilogx(f,ph,'*')
xlabel('Frequenz in Hz')
ylabel('Phase in \circ')
title('Bode-Diagramm Tiefpass 2. Ordnung Phase')
grid on