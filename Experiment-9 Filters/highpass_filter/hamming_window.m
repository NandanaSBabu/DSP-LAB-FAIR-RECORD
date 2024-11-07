clc;
clear all;
close all;
wc=0.9*pi;
eps=0.001;
N = input('Enter the value of N=');
alpha = (N-1)/2;

n = 0:1:N-1;
hd = (sin(pi*(n-alpha+eps))-sin(wc*(n-alpha+eps)))./(pi*(n-alpha+eps));
wr = hamming(N);
hn = hd.*wr';
w = 0:0.01:pi;
h = freqz(hn,1,w);
subplot(2,1,1);
plot(w/pi,10*log10(abs(h)));
title('high pass filter using hamming window');
xlabel('Normalized frequency');
ylabel('Magnitude in dB');
subplot(2,1,2);
stem(wr);
title('Hamming window Sequence');
xlabel('No. of Samples');
ylabel('Amplitude');
