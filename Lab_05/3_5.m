close all
clear all

L = 50;
n = (0:L-1);
w = .125*pi;
xx = 7*cos(w*n + pi/3);

ww = xx.*xx;

bb = [1 -1];
yy = firfilt( bb, ww);

yy = yy( 1:L );

subplot(3,1,1), stem(n, xx), title('x[n]');

subplot(3,1,2), stem(n, ww), title('w[n]');

subplot(3,1,3), stem(n, yy), title('y[n]');


bb = [1 -2*cos(.25*pi) 1];
%ww = exp(j*.25*pi*n);
y2 = firfilt(bb,ww);

y2 = y2(1:L);

figure(2)
stem(n,y2)