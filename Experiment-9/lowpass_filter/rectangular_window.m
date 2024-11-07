clc;
clear all;
close all;

% Parameters
wc = 0.5 * pi;
N = input("Enter N: ");
n = 0:1:N-1;
alpha = (N - 1) / 2;
eps = 0.001;

% Calculate ideal impulse response hd for the low-pass filter
hd = sin(wc * (n - alpha + eps)) ./ (pi * (n - alpha + eps));

% Apply rectangular window
wr = boxcar(N);
hn = hd .* wr;

% Define frequency range for frequency response
w = 0:0.01:pi;
h = freqz(hn(:), 1, w);

% Plot 1: Frequency Response
subplot(1, 3, 1);
plot(w / pi, 10 * log10(abs(h)));
title('Low-pass filter using rectangular window');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');

% Plot 2: Rectangular Window Sequence
subplot(1, 3, 2);
stem(n, wr);
title('Rectangular window sequence');
xlabel('Number of samples');
ylabel('Amplitude');

% Plot 3: Impulse Response of the Filter
subplot(1, 3, 3);
stem(n, hn);
title('Impulse response of the filter');
xlabel('Number of samples');
ylabel('Amplitude');
