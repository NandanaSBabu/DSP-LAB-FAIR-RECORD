clc;
clear all;
close all;
x=input("enter sequence:");
N=input("enter the n point:");
l=length(x);
x=[x zeros(1,N-1)];
X=zeros(N,1);
for k=0:N-1
    for n=0:N-1
        X(k+1)=X(k+1)+x(n+1)*exp(-1j*2*pi*n*k/N);
    end
end
disp('X');
disp(X);
disp('round(X)');
disp(round(X));
%verification
disp('fft');
disp(fft(x));
