close all
clear all

dur = 1;
fs = 8000;
fc = 1200;
fm = 100;
A = 0.8;
phi = 0;

t = [0:1/fs:dur];

mm = A*cos(2*pi*fm*t);
cc = cos(2*pi*fc*t);

AM = (1+mm).*cc;

figure(1)
hold on
plot(t(1:200),AM(1:200),'b-')
plot(t(1:200),mm(1:200),'r--')
hold off
title('Modulated and Message Signal')

figure(2),showspec(mm,fs),title('Message Spectrum'),axis([50 150 0 0.8])
figure(3),showspec(cc,fs),title('Carrier Spectrum'),axis([1000 1500 0 1.2])
figure(4),showspec(AM,fs),title('AM Signal Spectrum'),axis([1000 1500 0 1.2])