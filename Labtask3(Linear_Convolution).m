clc;
clear All;
close all;

xn= input('Enter the sequence 1: ');
l1= length(xn);



hn= input('Enter the sequence 2: ');
l2= length(hn);

m= l1+l2-1;
z= conv(xn,hn);
disp(z);
z1= zeros(1,m);
xn11=[xn,zeros(1, l2-1)];


hn11=[hn,zeros(1, l1-1)];

for i=1:m
    for j=1:i
        z1(i)=z1(i)+xn11(j)*hn11(i-j+1);
    end;
end;

disp(z1);
l3= length(z1);

m=1:l1;
subplot(2,2,1)
stem(m,xn);
axis([-10 10 -10 10]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('First Sequence')

m=1:l2;
subplot(2,2,2)
stem(m,hn);
axis([-10 10 -10 10]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Second Sequence')


m=1:l3;
subplot(2,2,3)
stem(m,z1);
axis([-10 10 -10 20]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Linear Convolution')