clc
clear All
close all

x= input('Enter discreate time signal values: ');
l= length(x);
a= input('Enter constant: ');

m=-3:2;
subplot(2,2,1)
stem(m,x);
axis([-10 10 -10 10]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Orginal Signal')


%amplitude scaling: y[n]= x[n]*a, a is a scaling constant
 for i= 1:l
     y(i)= x(i).*a;
 end


m=-3:2;
subplot(2,2,3)
stem(m,y);
axis([-10 10 -10 20]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Amplitude Scaling')

%offset of the signal: y[n]= a+ x[n], a is a constant
 for i= 1:l
     y(i)= a + x(i);
 end

 
n=-3:2;
subplot(2,2,4)
stem(n,y);
axis([-10 10 -10 10]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Offset of the signal')

