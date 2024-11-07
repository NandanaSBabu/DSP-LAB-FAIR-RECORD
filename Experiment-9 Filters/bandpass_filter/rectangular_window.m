clc;
clear all;
close all;
wc1=0.5*pi;
wc2=0.9*pi;
eps=0.001;
N = input('Enter the value of N=');
alpha = (N-1)/2;

n = 0:1:N-1;
hd = (sin(wc2*(n-alpha+eps))-sin(wc1*(n-alpha+eps)))./(pi*(n-alpha+eps));
wr = boxcar(N);
hn = hd.*wr';
w = 0:0.01:pi;
h = freqz(hn,1,w);
subplot(1,2,1);
plot(w/pi,10*log10(abs(h)));
title('band stop filter using rectangular window');
xlabel('Normalized frequency');
ylabel('Magnitude in dB');
subplot(1,2,2);
stem(wr);
title('Rectangular window Sequence');
xlabel('No. of Samples');
ylabel('Amplitude');
