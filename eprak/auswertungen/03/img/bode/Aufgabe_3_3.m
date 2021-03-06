close all
clear all

data1=importdata('3_3_up.txt');
data2=importdata('3_3_mid.txt');
data3=importdata('3_3_low.txt');


%U_diff
Ud1=data1(:,1);
%U_CM
Uc1=data1(:,2);
%U_out
Uo1=data1(:,3);

%U_diff
Ud2=data2(:,1);
%U_CM
Uc2=data2(:,2);
%U_out
Uo2=data2(:,3);

%U_diff
Ud3=data3(:,1);
%U_CM
Uc3=data3(:,2);
%U_out
Uo3=data3(:,3);

Ud=[Ud1;Ud2;Ud3];

Uc=[Uc1;Uc2;Uc3];

Uo=[Uo1;Uo2;Uo3];

figure(1)
plot(Ud,Uo,'*')
grid on
xlabel('U_{diff} in V')
ylabel('U_{out} in V')

figure(2)
plot(Uc,Uo,'*')
grid on
xlabel('U_{CM} in V')
ylabel('U_{out} in V')

