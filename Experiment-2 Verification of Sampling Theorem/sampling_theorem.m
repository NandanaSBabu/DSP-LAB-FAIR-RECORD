clc;
clear all;
close all;
f=input("Enter frequency of sine wave in Hz:");
t1= 0:0.01:1;
y1=sin(2*pi*f*t1);
subplot(2,2,1);
hold on;
plot(t1,y1);
xlabel('time');
ylabel('amplitide');
title('Continuous Signal');
grid on;
hold off;

% undersampling
fs1=0.5*f;
t2=0:1/fs1:1;
y2=sin(2*pi*f*t2);
subplot(2,2,2);
plot(t2,y2);
hold on;
stem(t2,y2);
legend('continuous','discrete');
grid on;
xlabel('time');
ylabel('amplitude');
title('Under sampled signal');
hold off;

% Nyquist sampling
fs2=3*f;
t3=0:1/fs2:1;
y3=sin(2*pi*f*t3);
subplot(2,2,3);
plot(t3,y3);
hold on;
stem(t3,y3);
legend('continuous','discrete');
grid on;
xlabel('time');
ylabel('amplitude');
title('Nyquist sampled signal');
hold off;

% over sampling
fs3=10*f;
t4=0:1/fs3:1;
y4=sin(2*pi*f*t4);
subplot(2,2,4);
plot(t4,y4);
hold on;
stem(t4,y4);
legend('continuous','discrete');
grid on;
xlabel('time');
ylabel('amplitude');
title('Over sampled signal');
hold off;
