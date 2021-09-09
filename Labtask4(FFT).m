clc
clear All
close all

x= input('Enter the sequence: ');
l1= length(x);
%FFT of a sequence
r=fft(x);
disp(r);
l2= length(r);
%Plot the signal

m=1:l1;
subplot(2,1,1)
stem(m,x);
axis([-5 10 -5 10]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Original Sequence')

m=1:l2;
subplot(2,1,2)
stem(m,r);
axis([-5 10 -5 10]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Fast Fourier Transform')