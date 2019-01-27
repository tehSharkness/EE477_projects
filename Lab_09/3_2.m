close all
clear all

%3.2
%3.2.a

load lenna

xz = xx(101:150,101:150);

xz2 = zoom_img(xz);

figure(1)
subplot(2,2,1),show_img(xz,0)
subplot(2,2,2),show_img(xz2,0)

%3.2.b

L = length(xz);
yy = zeros(4*L,4*L);
yy(4:4:4*L, 4:4:4*L) = xz;

% subplot(2,2,2),show_img(yy, 0)

%3.2.c
coeffs = [1/4 1/2 3/4 1 3/4 1/2 1/4];
ylin = filter2(coeffs(:),filter2(coeffs,yy));

subplot(2,2,3),show_img(ylin, 0),title('Linear Interpolation')

k = 0:22;
wk = 0.54-0.46*cos(2*pi*k/22);
bk = sin(pi*(k-11)/4)./(pi*(k-11)/4).*wk;
bk(12) = 1;

ysinc = filter2(bk(:),filter2(bk,yy));

subplot(2,2,4),show_img(ysinc, 0),title('Sinc Interpolation')