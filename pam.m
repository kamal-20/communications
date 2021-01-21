

fc= 100
fm=10
fs=100*fc
t = input("enter time period");
t1=linspace(0,t,1000);
mt=cos(2*pi*fm*t1);
ct=0.05*square(2*pi*fc*t1)+0.05;
figure;
subplot(411);
plot(t1,mt);
xlabel('Time');
ylabel('Amplitude');
title('Message signal');
subplot(412);
plot(t1, ct);
title('Carrier Signal');
xlabel('time(t)');
ylabel('Amplitude');
y = mt.*ct;
subplot(413);
plot(t1, y);
title('Modulated Signal');
xlabel('time(t)');
ylabel('Amplitude');
z = y./ct;
subplot(414);
plot(t1, z);
title('Demodulated Signal');
xlabel('time(t)');
ylabel('Amplitude');

