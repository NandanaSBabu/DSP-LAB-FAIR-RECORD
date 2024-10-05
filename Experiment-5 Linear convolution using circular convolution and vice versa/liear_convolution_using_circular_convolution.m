clc;
clear all;
close all;
x=[1 2 3 4];
h=[1 1 1];
lx=length(x);
lh=length(h);
lt=lx+lh-1;
x=[x zeros(1,lh-1)];
h=[h zeros(1,lx-1)];
x_k=fft(x);
h_k=fft(h);
y_k=x_k.*h_k;
y=ifft(y_k);
disp('Linear Convolution using Circular Convolution output');
disp(y);

%verification
x=[1 2 3 4];
h=[1 1 1];
y=conv(x,h);
disp('Verification');
disp(y);
