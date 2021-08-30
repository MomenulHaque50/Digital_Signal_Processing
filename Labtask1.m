clc;
close all;
n=([-3:4]);
y=[0 0 0 1 0 0 0 0];
subplot(4,2,1)
stem(n,y);
xlabel('Number of samples-->');
ylabel('Amplitude');
title('Unit Impulse Sequence');


t=0:10;
x=[1 0 1 0 1 0 1 0 1 0 1];
subplot(4,2,2)
plot(t,x);
ylim([-0.5 1.1]);
xlabel('Time (sec)')
ylabel('Amplitude')
title('Triangular Pulse Wave')

v=-10:10;
u=[zeros(1,10) ones(1,11)];
subplot(4,2,3)
stem(v,u);
xlabel('Number of samples-->')
ylabel('Amplitude')
title('Unit Step Sequence')


k=-10:10;
a=4;
l=[zeros(1,10) ones(1,11).*a];
subplot(4,2,4)
plot(k,l);
ylim([-0.5 5.0]);
xlabel('Time(sec)-->')
ylabel('Amplitude')
title('Step Signal')


m=-20:20;
p=(m>=0).*m;
subplot(4,2,5)
stem(m,p);
axis([-20 20 -10 20]);
xlabel('Number of samples-->')
ylabel('Amplitude')
title('Unit Ramp Sequence')


m=-20:20;
p=(m>=0).*m;
subplot(4,2,6)
plot(m,p);
axis([-20 20 -10 20]);
xlabel('Time(sec)-->')
ylabel('Amplitude')
title('Ramp Signal')
grid on;

n=-10:10;
q=sin(2*pi*0.1*n);
subplot(4,2,7)
stem(n,q);
ylim([-1.2 1.2]);
xlabel('Time Samples-->')
ylabel('Amplitude')
title('Unit Sinusoidal Sequence')

fs=100;
f=2;
t=0:1/fs:1;
y=sin(2*pi*f*t);
subplot(4,2,8)
plot(t,y);
ylim([-1.2 1.2]);
xlabel('Time Period-->')
ylabel('Amplitude')
title('Sinusoidal Signal')


