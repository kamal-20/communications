%%
% $$ %% AM Modulation and Demodulation using Functions in MATLAB
%% Modulation index
%% Time Pereiod of Simulation :
t = linspace(0, 0.2, 100000);
%% Message Signal :
Am = input('Amplitude of message signal:');
fm = input('Frequency of message signal:');
Ac = input('Amplitude of carrier signal:');
fc = input('Frequency of carrier signal:');
h = Am/Ac
yc = Ac*cos(2*pi.*fc*t);
ym = Am*cos(2*pi.*fm*t);
figure;
subplot(4, 1, 1);
plot(t(1:10000), ym(1:10000));
title('Message Signal');
xlabel('time(t)');
ylabel('Amplitude');
%% Carrier Signal :
subplot(4, 1, 2);
plot(t(1:10000), yc(1:10000));
title('Carrier Signal');
xlabel('time(t)');
ylabel('Amplitude');
%% Modulated Signal :
y = ammod(ym, fc, 100000);
subplot(4, 1, 3);
plot(t(1:10000), y(1:10000));
title('Modulated Signal');
xlabel('time(t)');
ylabel('Amplitude');
%% Demodulated Signal :
z = amdemod(y, fc, 100000);
subplot(4, 1, 4);
plot(t(1:10000), z(1:10000));
title('Demodulated Signal');
xlabel('time(t)');
ylabel('Amplitude');
ylim([-6, 6]);