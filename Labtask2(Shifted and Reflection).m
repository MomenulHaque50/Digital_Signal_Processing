clc
clear All
close all

x= input('Enter discreate time signal values: ');
l= length(x);
a= input('Enter shifting constant: ');

m=-3:4;
subplot(2,2,1)
stem(m,x);
axis([-10 10 -10 10]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Orginal Signal')

y= x;
N= m+a;

subplot(2,2,2)
stem(N,y);
axis([-10 10 -10 10]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Right Shifted Signal')

y= x;
N= m-a;

subplot(2,2,3)
stem(N,y);
axis([-10 10 -10 10]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Left Shifted Signal')

% implementation of y(n)=x(-n)

y= fliplr(x);
n=-fliplr(m);

subplot(2,2,4)
stem(n,y);
axis([-10 10 -10 10]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Reflection or Folding Signal')

