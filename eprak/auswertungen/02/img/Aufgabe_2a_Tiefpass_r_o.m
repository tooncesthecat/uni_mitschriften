close all;
clear all;

data=importdata('2a_bode_tief.txt');

%Frequenz
f=data(:,1);
%Gain dB
db=data(:,2);

f1=[f(1),f(19)];
f2=[f(20),f(38)];
f3=[f(39),f(57)];
f4=[f(58),f(76)];

db1=[db(1),db(19)];
db2=[db(20),db(38)];
db3=[db(39),db(57)];
db4=[db(58),db(76)];

m1=(db1(2)-db1(1))/(f1(2)-f1(1))
m2=(db2(2)-db2(1))/(f2(2)-f2(1))
m3=(db3(2)-db3(1))/(f3(2)-f3(1))
m4=(db4(2)-db4(1))/(f4(2)-f4(1))

y1=900*m1
y2=9000*m2
y3=90000*m3
y4=900000*m4

bla=db(1)-db(19)
semilogx(f,db)