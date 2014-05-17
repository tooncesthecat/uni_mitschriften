close all;
clear all;

data=importdata('3_2_Bode_2.txt');

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
hold on

figure(2)
semilogx(f,U,'*')
hold on

figure(3)
semilogx(f,ph,'*')