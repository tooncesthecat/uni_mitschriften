close all;
clear all;

data=importdata('3_2_Bode_1.txt');

%Frequenz
f=data(:,1);
%Gain dB
db=data(:,2);
%Gain U_out/U_in
U=data(:,3);
%phase
ph=data(:,4);


figure(1)
semilogx(f,db,'*')
xlabel('Frequenz in Hz')
ylabel('Dämpfung in dB')
grid on


figure(2)
semilogx(f,U,'*')
xlabel('Frequenz in Hz')
ylabel('$\displaystyle\frac{U_{out}}{U_{in}}$','interpreter','latex')
grid on

figure(3)
semilogx(f,ph,'*') 
xlabel('Frequenz in Hz')
ylabel('Phase in ^\circ')
grid on