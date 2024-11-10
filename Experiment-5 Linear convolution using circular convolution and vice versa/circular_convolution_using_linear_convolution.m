clc;
clear all;
close all;

x=[1 2 3 4];
h=[1 1 1];
lx=length(x);
lh=length(h);
lt=max(lx,lh);
k=lx+lh-1;
y=conv(x,h);
disp(y);
for i=1:k-lt
    y(i)=y(i)+y(lt+i);
end
for i=1:lt
    res=y(i);
end
disp('Circular using Linear convolution');
disp(y);


% Verification using FFT-based circular convolution
x = [1 2 3 4];
h = [1 1 1];
l = length(x);
m = length(h);

% Pad h with zeros to make it the same length as x
h = [h, zeros(1, l - m)];
X_K = fft(x);
H_K = fft(h);
Y_K = X_K .* H_K;
y_fft = ifft(Y_K);
disp('Verification');
disp(y_fft);
