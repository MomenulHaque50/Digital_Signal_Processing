clc
clear All
close all

x= input('Enter discreate time signal values: ');
l= length(x);
a= input('Enter scaling constant: ');

m=-3:4;
subplot(2,2,1)
stem(m,x);
axis([-10 10 -10 10]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Orginal Signal')

%time scaling: y[n]= x[a*n], a is a scaling constant
j=-3;
for i= 1:l
    k= i.*a;
    if k<=l
    y(i)=x(k);
    j= j+1;
    end
       
end

l2= length(y);
disp(y);
n=-3:j-1;
subplot(2,2,2)
stem(n,y);
axis([-10 10 -10 10]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Time Scaling')


