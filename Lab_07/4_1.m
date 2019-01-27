close all
clear all

fs = 8000;

L = 64;
n = [0:L];

h770 = 2/L*cos(2*pi*770*n/fs);
h1336 = 2/L*cos(2*pi*1336*n/fs);

figure(1)
subplot(2,1,1),stem(n,h770)
subplot(2,1,2),stem(n,h1336)

ww = 0:(pi/256):pi;
ff = ww/(2*pi)*fs;
H770 = freqz(h770,1,ww);

figure(2)
hold on
plot(ff,abs(H770))
stem([697 770 852 941 1209 1336 1477], [.5 1 .5 .2 .1 .1 .1])
hold off
grid on

H1336 = freqz(h1336,1,ww);

figure(3)
hold on
plot(ff,abs(H1336))
stem([697 770 852 941 1209 1336 1477], [.1 .1 .1 .2 .5 1 .5])
hold off
grid on