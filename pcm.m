clc;
clear all;
t = 0:0.005:20;
partition = -1:0.2:2;
codebook = -1:0.2:2.2;
x = sin(t);
[index,quants] = quantiz(x,partition,codebook);
subplot(3,1,1);
plot(t,x);
title('Message Signal');
xlabel('Time(s) ---->')
ylabel('Amplitude(V) ---->')
subplot(3,1,2);
plot(t,quants);
title('Quantized Signal');
xlabel('Time(s) ---->')
ylabel('Amplitude(V) ---->')
y = uencode(quants,3);
subplot(3,1,3);
plot(t,y);
title('PCM Signal');
xlabel('Time(s) ---->');
ylabel('Amplitude(V) ---->') 
