close all
clear all

%5.a)

dur = 1;
fs = 8000;
fc = 1200;
fm = 100;
A = 0.8;
phi = 0;

t = [0:1/fs:dur];

mt = A*cos(2*pi*fm*t);
ct = cos(2*pi*fc*t);

xt = (1+mt).*ct;

dt = (xt.*ct)-1/2;

figure(1),showspec(dt,fs),axis([ 0 2550 0 .5 ])

bk = [1 -2*cos(2*pi*2400/fs) 1];

ww = -pi:(pi/8000):pi;

figure(2),freqz(bk,1,ww)

yt = firfilt(bk,dt);

%5.b)

dt = amdemod(xt,fc,fs,1.2)

%5.c)
start = length(t)/2-100;
stop = length(t)/2+100;

figure(3)
subplot(3,1,1),plot(t(start:stop),mt(start:stop))
subplot(3,1,2),plot(t(start:stop),yt(start:stop))
subplot(3,1,3),plot(t(start:stop),dt(start:stop))

%5.d)
figure(4)
subplot(3,1,1),showspec(mt,fs),axis([ 0 2600 0 1 ])
subplot(3,1,2),showspec(yt,fs),axis([ 0 2600 0 1 ])
subplot(3,1,3),showspec(dt,fs),axis([ 0 2600 0 1 ])

 
figure(5)
pt = firfilt(yt, bk);
subplot(3,1,1),plot(t(start:stop),mt(start:stop))
subplot(3,1,2),plot(t(start:stop),pt(start:stop))
subplot(3,1,3),plot(t(start:stop),dt(start:stop))