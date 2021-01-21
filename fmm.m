%FM generation
clc;
clear all;
close all;
fc=input('Enter the carrier signal freq in hz,fc=');
fm=input('Enter the message signal freq in hz,fm =');
m=input('Modulation index,m= ');
t=[0:0.001:1];
M=cos(2*pi*fm*t);%carrier signal
c=sin(2*pi*fc*t);% message signal
subplot(4,1,1);plot(t,M);
ylabel('amplitude');xlabel('time index');title('Message signal');
subplot(4,1,2);plot(t,c);
ylabel('amplitude');xlabel('time index');title('Carier signal');
y=sin((2*pi*fc*t)+(m*sin(2*pi*fm*t)));
%y=fmmod(M,fc,8000);
subplot(4,1,3);plot(t,y,'r');
ylabel('amplitude');xlabel('time index');title('Frequency Modulated signal');
x = diff(y);
z = abs(x);
[b,a] = butter(10,0.056);
ans = filter(b,a,z);
subplot(4,1,4);plot(ans,'g');
ylabel('amplitude');xlabel('time index');title('Frequency Modulated signal');