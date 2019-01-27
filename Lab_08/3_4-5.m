%3.4

close all
clear all

load baboon

show_img(xx,1),title('Original')

w = -pi:pi/100:pi;

%a
k = (0:20);
ba = exp(-0.075*(k-10).^2);
ba(11) = 1.1;

figure(2)
subplot(2,1,1),stem(k,ba)
subplot(2,1,2),plot(w/pi,20*log10(abs(freqz(ba,1,w)))),title('Magnitude of Frequency Response'), grid on

%b
bb = cos(0.4*pi*(k-10)).*exp(-0.13*(k-10).^2);

figure(3)
subplot(2,1,1),stem(k,bb)
subplot(2,1,2),plot(w/pi,20*log10(abs(freqz(bb,1,w)))),title('Magnitude of Frquency Response'), grid on

%c
y = conv2(conv2(xx,ba),ba(:));

show_img(y,4),title('y[m,n]')

%d
v = conv2(conv2(xx,bb),bb(:));
v = clip(v,-55,75);

show_img(v,5),title('v[m,n]')

%e
a = .95;
z = (1-a)*y+a*v;

show_img(z,6),title('Sharpened Image')

disp('Press any key to continue.')
pause
%------------------------------------------------------
%3.5
close all
%a
b2 = [1 -2 1];

figure(1),freqz(b2,1,w)

%b
ww = conv2(conv2(y,b2),b2(:));

show_img(ww,2),title('w')

%c
figure(3),freqz(conv(b2,ba),1,w)

%d
ww = ww(1:length(y),1:length(y));

a = .99;
z = (1-a)*y+a*ww;

figure(4)
subplot(1,2,1),show_img(y,0),title('y')
subplot(1,2,2),show_img(z,0),title('Synthetic High')