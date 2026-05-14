%% SESSION 3.3: RC CIRCUIT MODELING
% Demonstrates transient response and effect of parameter changes.

clc;
clear;
close all;



x=np.linspace(0.01,2,500);
y=x*np.log(x);

x1,x2=0.5,1.5;
y1,y2=x1*.log(x1),x2*np.log(x2);

m=(y2-y1)/(x2-x1);
c=y1-m*x1;

figure;
plt.plot(x,y,label='f(x)=xlogx');
plt.plot(x,m*x+c,'--',label='Secant');
plt.scatter([x1,x2],[y1,y2]);
plt.show();