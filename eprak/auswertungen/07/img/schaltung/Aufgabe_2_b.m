close all
clear all

t1=[0 1 1  3 3  5 5  7 7  9 9 10]+1;
C=[0 0 1 1 0 0 1 1 0 0 1 1];

t2=[0 0.5 0.5 1.5 1.5 6.5 6.5 8 8 10]+1;
S=[0 0 1 1 0 0 1 1 0 0]-2;

t3=[0 2.5 2.5 4 4 8.5 8.5 10]+1;
R=[0 0 1 1 0 0 1 1]-4;

t4=[0 1 1 2.5 2.5 6.5 6.5 9 9  10]+1;
Q=[0 0 1 1 0 0 1 1 0 0]-6;
Q_=[1 1 0 0 1 1 0 0 1 1]-8;

plot(t1,C,t2,S,t3,R,t4,Q,t4,Q_,'LineWidth',3)
set(gca,'Fontsize',15)
set(gca,'YTickLabel',{}) 
set(gca,'XTickLabel',{}) 
grid on
xlabel('t')
ylim([-9 2])
legend('C','S','R','Q','Q^-','Location','EastOutside')
xlim([1 11])
