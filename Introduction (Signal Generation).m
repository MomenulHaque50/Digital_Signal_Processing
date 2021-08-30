fs = 10000;
t = 0:1/fs:1.5;
x1 = sawtooth(2*pi*50*t);
x2 = square(2*pi*50*t);
x3 = sin(2*pi*50*t);
x4 = tan(2*pi*50*t);
x5 = cos(2*pi*50*t);
x6= x1+ x2+ x3;
x7= x3-x5-x1;
x8= x1.*x2;


subplot(3,3,1)
plot(t,x1)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Sawtooth Periodic Wave')

subplot(3,3,2)
plot(t,x2)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Square Periodic Wave')

subplot(3,3,3)
plot(t,x3)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Sin Periodic Wave')

subplot(3,3,4)
plot(t,x4)
axis([0 0.1 -8.2 8.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Tan Periodic Wave')

subplot(3,3,5)
plot(t,x5)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Cos Periodic Wave')

subplot(3,3,7)
plot(t,x6)
axis([0 0.2 -2.2 2.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Addition Wave Signal')


subplot(3,3,8)
plot(t,x7)
axis([0 0.1 -3.2 3.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Subtraction Wave Signal')

subplot(3,3,9)
plot(t,x8)
axis([0 0.2 -1.2 0.5])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Multiplication Wave Signal')
