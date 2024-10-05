clc;
clear all;
close all;

x=input('enter first sequence:');
h=input("enter second sequence:");
lx=length(x);
lh=length(h);
lt=lx+lh-1;
sx=input("enter starting index of first sequence:");
sh=input("enter starting index of second sequence:");
rx=sx:1:lx+sx-1;
rh=sh:1:lh+sh-1;
rt=sx+sh:1:lt+sx+sh-1;
y=[zeros(1,lt)];
for i=1:lx
    for j=1:lh;
        y(i+j-1)=y(i+j-1)+x(i)*h(j);
    end
end
disp("convoluted output:");
disp(y);
%ploting
subplot(1,3,1);
stem(rx,x);
xlabel('n');
ylabel('amplitude');
grid on;
title('x(n)');

subplot(1,3,2);
stem(rh,h);
xlabel('n');
ylabel('amplitude');
grid on;
title('h(n)');

subplot(1,3,3);
stem(rt,y);
xlabel('n');
ylabel('amplitude');
grid on;
title('y(n)');
