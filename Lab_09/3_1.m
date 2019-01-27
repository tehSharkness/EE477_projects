close all
clear all

%3.1
%3.1.a
load tools
xs = imsample(xx,4);
bs = ones(1,4);
yhold = filter2(bs,xs);

figure(1)
subplot(2,3,1),show_img(xx,0)
%subplot(2,2,2),show_img(xs,0)
subplot(2,3,2),show_img(yhold,0)

%3.1.b
yhold = filter2(bs(:),yhold);
subplot(2,3,3),show_img(yhold,0),title('square')

%3.1.c
coeffs = [1/4 1/2 3/4 1 3/4 1/2 1/4];

ylin = filter2(coeffs(:),filter2(coeffs,xs));

subplot(2,3,4),show_img(ylin,0),title('triangle')

%3.1.e

w = -pi:pi/100:pi;
figure(2),freqz(coeffs, 1, w)

%3.1.f
k = 0:22;
wk = 0.54-0.46*cos(2*pi*k/22);
bk = sin(pi*(k-11)/4)./(pi*(k-11)/4).*wk;
bk(12) = 1;

xs_filt = filter2(bk(:),filter2(bk,xs));

figure(1)
subplot(2,3,5),show_img(xs_filt,0),title('xs filt')

figure(3),freqz(bk,1,w)
