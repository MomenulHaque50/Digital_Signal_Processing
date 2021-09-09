clc;
clear All;
close all;

n=20;
fp=200;
fs=600;
f=1000;
wp=2*(fp/f);
ws=2*(fs/f);

%wn=[wp,ws];
window=boxcar(n+1); %rectangle window
%window=bartlett(n+1);
%window=hamming(n+1);
%window=hanning(n+1);
%window=kaiser(n+1);

wn=2*(fp/f);
b=fir1(n,wn,window);
%b=Fir1(n,wn,'high',window);
[H,w]=freqz(b,1);

%plot the signal
subplot(2,1,1);
plot(w/pi,20*log(abs(H)));
xlabel('Normalized Frequency')
ylabel('Magnitude (dB)')
title('Lowpass Filtered Signal Magnitude Response (dB)')
subplot(2,1,2);
plot(w/pi,angle(H));
xlabel('Normalized Frequency')
ylabel('Angle')
title('Lowpass Filtered Signal Phase response')
