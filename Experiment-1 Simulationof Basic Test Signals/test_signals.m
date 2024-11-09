clc;
clear all;
close all;

% 1. unit impulse signal
t1=-5:1:5;
y1= [zeros(1,5), ones(1,1), zeros (1,5)];
subplot (3,3,1);
hold on;
stem (t1, y1);
xlabel('time');
ylabel('amplitude');
title('unit impulse signal');
grid on;
hold off;

% 2. biploar pulse
t2=0:0.01:1;
f2=5;
y2=square(2*pi*f2*t2);
subplot(3,3,2)
plot(t2,y2);
hold on;
stem(t2,y2);
xlabel('time');
ylabel('amplitide');
title('biploar pulse');
grid on;
axis([0 1 -2 2]);
legend('continuous','discrete');
hold off;

% 3. unipolar pulse
t3=0:0.01:1;
f3=5;

y3=sqrt(square(2*pi*f3*t3));
subplot(3,3,3);
plot(t3,y3);
hold on;
stem(t3,y3);
xlabel('time');
ylabel('amplitude');
title('unipolar pulse');
grid on;
axis([0 1 -2 2]);
legend('continuous','discrete','Location','best');
hold off;

% 4. ramp signal
t4=0:1:5;
y4=t4;
subplot(3,3,4);
plot(t4,y4);
hold on;
stem(t4,y4);
xlabel('time');
ylabel('amplitude');
title('ramp signal');
legend('continuous','discrete','best');
hold off;


% 5. triangular signal
f5=10;
t5=0:0.025:1;
y5=sin(2*pi*f5*t5);
subplot(3,3,5);
plot(t5,y5);
hold on;
stem(t5,y5);
axis([0 1 -2 2]);
xlabel('time');
ylabel('amplitude');
title('triangular signal');
legend('continuous','discrete','best');
hold off;
grid on;

% 6. sine wave
t6=0:0.01:1;
f6=5;
y6=sin(2*pi*f6*t6);
subplot(3,3,6);
hold on;
plot(t6,y6);
stem(t6,y6);
grid on;
xlabel('time');
ylabel('amplitude');
title('sine wave');
legend('continuous','discrete');
hold off;

% 7. cosine wave
t7=0:0.01:1;

f7=5;
y7=cos(2*pi*f7*t7);
subplot(3,3,7);
plot(t7,y7);
hold on;
stem(t7,y7);
grid on;
xlabel('time');
ylabel('amplitude');
title('cosine wave');
legend('continuous','discrete');
grid on;
hold off;

% 8. exponential signal
t8=-5:1:5;
y8=exp(t8);
subplot(3,3,8);
plot(t8,y8);
hold on;
stem(t8,y8);
xlabel('time');
ylabel('amplitude');
grid on;
legend('continuous','discrete')
title('exponential signal');
hold off;

% 9. unit step signal
t9=-5:1:5;
y9=[zeros(1,5),ones(1,6)];
subplot(3,3,9);
hold on;
stem(t9,y9);
xlabel('time');
ylabel('amplitude');
axis([-5 5 0 2]);
title('unit step signal');
hold off;
