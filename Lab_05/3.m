close all
clear all

L = 50;
n = (0:L-1);
w = .125*pi;
x1 = 7*cos(w*n + pi/3);
bb = [5 -5];
yy = firfilt( bb, x1);

yy = yy( 1:L );

figure(1)
subplot(2,1,1)
stem(n , yy), title('Plot of y(n)')
subplot(2,1,2)
stem(n , x1), title('Plot of x(n)')

[Xn1,XA1] = ginput(1);
[Yn1,YA1] = ginput(1);

disp('x[n]')
disp('Phase')
-Xn1*w
disp('Amplitude')
XA1

disp('y[n]')
disp('Phase')
-Yn1*w
disp('Amplitude')
YA1

disp('Ratio of Amplitudes')
YA1/XA1

disp('Difference in Phase')
-Yn1*w+Xn1*w

% x2 = exp(j*w*n);
% y2 = firfilt( bb, x2);
% 
% y2 = y2(1:L);
% 
% figure(2)
% stem(n,y2),axis([0 50 -2.5 2.5]);

% [Yn2,YA2] = ginput(1);
% 
% disp('x[n] = exp^(jwn)')
% disp('Ratio of Amplitudes')
% YA2/XA1
% 
% disp('Change in Phase')
% -Yn2*w+Xn1*w

%3.3
%a
xa = 2*x1;
ya = firfilt(bb,xa);

ya = ya(1:L);

figure(3)
subplot(2,1,1),stem(n,ya),title('ya[n]')
subplot(2,1,2),stem(n,xa),title('xa[n]')

[x1,y1] = ginput(1);
[x2,y2] = ginput(1);

disp('3.3 - Part (a)')

disp('Ratio of Amplitudes')
y2/y1

disp('Difference in Phase')
-x2*w+x1*w

%b
xb = 8*cos(.25*pi*n);
yb = firfilt(bb,xb);

yb = yb(1:L);

figure(4)
subplot(2,1,1),stem(n,yb),title('yb[n]')
subplot(2,1,2),stem(n,xb),title('xb[n]')

[x1,y1] = ginput(1);
[x2,y2] = ginput(1);

disp('3.3 - Part (b)')

disp('Ratio of Amplitudes')
y2/y1

disp('Difference in Phase')
-x2*.25*pi+x1*.25*pi

%c
xc = xa+xb;

yc = firfilt(bb,xc);

yc = yc(1:L);

figure(5)
subplot(2,1,1),stem(n,yc),title('yc[n]')
subplot(2,1,2),stem(n,ya+yb),title('ya[n]+yb[n]')

%3.4

xs = 7*cos(w*(n-3)+pi/3);
ys = firfilt(bb,xs);

ys = ys(1:L);

figure(6)
subplot(2,1,1),stem(n,ys),axis([0 50 -15 20]),title('ys[n]')
subplot(2,1,2),stem(n,yy),title('y1[n]')