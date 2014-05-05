close all
clear all

I=[113*10^-3/1000 139*10^-3/1000 103*10^-3/1000];
U=[167*10^-3 95*10^-3 100*10^-3];
phi=[-87 72 4];
Z=zeros(1,length(I));

for j=1:3
    Z(j)=U(j)/I(j)*(cosd(phi(j))+1i*sind(phi(j)));
end

C=-1i*(1/(Z(1)*2*pi*1000));
L=Z(2)/(1i*2*pi*1000);