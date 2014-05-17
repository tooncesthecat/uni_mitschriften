close all 
clear all

data1=importdata('Messung_1_1.txt');

IB1=data1(:,1);
UBE1=data1(:,2);
IC1=data1(:,3);
UCE1=data1(:,4);

data2=importdata('Messung_1_2.txt');

IB2=data2(:,1);
UBE2=data2(:,2);
IC2=data2(:,3);
UCE2=data2(:,4);

data3=importdata('Messung_1_3.txt');

IB3=data3(:,1);
UBE3=data3(:,2);
IC3=data3(:,3);
UCE3=data3(:,4);

data4=importdata('Messung_1_4.txt');

IB4=data4(:,1);
UBE4=data4(:,2);
IC4=data4(:,3);
UCE4=data4(:,4);

data5=importdata('Messung_1_5.txt');

IB5=data5(:,1);
UBE5=data5(:,2);
IC5=data5(:,3);
UCE5=data5(:,4);

data6=importdata('Messung_1_6.txt');

IB6=data6(:,1);
UBE6=data6(:,2);
IC6=data6(:,3);
UCE6=data6(:,4);

IB=[IB1;IB2;IB3;IB4;IB5;IB6];
UBE=[UBE1;UBE2;UBE3;UBE4;UBE5;UBE6];
IC=[IC1;IC2;IC3;IC4;IC5;IC6];
UCE=[UCE1;UCE2;UCE3;UCE4;UCE5;UCE6];
IB=IB*10^6;

figure(1)
plot(UCE,IC,'*')
xlabel('U_{CE} in V')
grid on
ylabel('I_C in A')
ylim([0 0.05])

figure(2)
plot(IB,IC,'*')
xlabel('I_B in \mu A')
grid on
ylabel('I_C in A')
set(gca,'YAxisLocation','right')
set(gca,'XDir','reverse');
ylim([0 0.05])

figure(3)
plot(IB,UBE,'*')
xlabel('I_B in \mu A')
grid on
ylabel('U_BE in V')
set(gca,'YAxisLocation','right')
set(gca,'XAxisLocation','top')
set(gca,'YDir','reverse');
set(gca,'XDir','reverse');
ylim([0 1])

figure(4)
plot(UCE,UBE,'*')
xlabel('U_{CE} in V')
grid on
ylabel('U_{BE} in V')
set(gca,'YDir','reverse');
set(gca,'XAxisLocation','top')
ylim([0 01])

