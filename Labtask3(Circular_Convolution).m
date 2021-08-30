clc;
clear All;
close all;

x= input('Enter the sequence 1: ');
l1= length(x);


h= input('Enter the sequence 2: ');
l2= length(h);

N= max(l1,l2);

if(l1<l2)
x=[x zeros(1, N-l1)];
end;
if(l1>l2)
h=[h zeros(1, N-l2)];
end;
z= ifft(fft(x).*fft(h));
disp(z);
y= zeros(1,N);
  for m=0:N-1
      for n= 0:N-1
          z= mod(m-n,N);
         
          y(m+1)=y(m+1)+x(n+1).*h(z+1);
      end;
  end;
  disp(y);
  l3= length(y);
 m=1:l1;
subplot(2,2,1)
stem(m,x);
axis([-10 10 -10 10]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('First Sequence')

m=1:l2;
subplot(2,2,2)
stem(m,h);
axis([-10 10 -10 10]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Second Sequence')


m=1:l3;
subplot(2,2,3)
stem(m,y);
axis([-10 10 -10 20]);
xlabel('Discrete samples-->')
ylabel('Amplitude')
title('Circular Convolution')