clc
clear All
close all

%amplitude addition of two signal y1[n]= x1[n] + x2[n]

x1= input('Enter first discreate time signal values: ');
l1= length(x1);

x2= input('Enter second discreate time signal values: ');
l2= length(x2);


p=-3:2;
subplot(2,2,1)
stem(p,x1);
axis([-10 10 -10 10]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Original First signal')

p=-3:2;
subplot(2,2,2)
stem(p,x2);
axis([-10 10 -10 10]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Original Second signal')

for i= 1:l1
     y1(i)= x1(i)+ x2(i);
end

p=-3:2;
subplot(2,2,3)
stem(p,y1);
axis([-10 10 -10 20]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Addition')

%amplitude multiplication of two signal y1[n]= x1[n] + x2[n]


for i= 1:l1
     y2(i)= x1(i).* x2(i);
end

p=-3:2;
subplot(2,2,4)
stem(p,y2);
axis([-10 10 -10 50]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Multiplication')