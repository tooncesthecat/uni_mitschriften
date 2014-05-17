close all
clear all
data=importdata('Messung_1_7.txt');

IB=data(:,1);
UBE=data(:,2);
IC=data(:,3);
UCE=data(:,4);

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