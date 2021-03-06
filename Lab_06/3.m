close all
clear all

w = [-pi:pi/100:pi];
%----------------------------------------------------------------------
%3.2
%----------------------------------------------------------------------
load lab06dat

b5 = 1/5*ones(1,5);

v1 = firfilt(b5,x1);

figure(1)
subplot(2,1,1),plot(1:length(x1),x1),title('x1[n]'),axis([0 105 -15 5])
subplot(2,1,2),plot(1:length(v1),v1),title('v1[n]'),axis([0 105 -15 5])

% [m,n] = ginput(2)
% 
% m(2)-m(1)

figure(2),freqz(b5,1, w)
%----------------------------------------------------------------------
%3.3
%----------------------------------------------------------------------
bfd = [1 -1];
v2 = firfilt(bfd, x1);

figure(3)
subplot(2,1,1),plot(1:length(x1),x1),title('x1[n]'),axis([0 105 -15 5])
subplot(2,1,2),plot(1:length(v2),v2),title('v2[n]'),axis([0 105 -5 5])

figure(4),freqz(bfd, 1, w)
%----------------------------------------------------------------------
%3.4
%----------------------------------------------------------------------
y1 = firfilt(bfd,v1);

figure(5),freqz(firfilt(b5,bfd),1, w)
%----------------------------------------------------------------------
%3.5
%----------------------------------------------------------------------
y2 = firfilt(b5,v2);

figure(6),freqz(firfilt(bfd,b5),1, w)

figure(7)
subplot(2,1,1),plot(1:length(y1),y1),title('y1[n]')
subplot(2,1,2),plot(1:length(y2),y2),title('y2[n]')
%----------------------------------------------------------------------
%3.6
%----------------------------------------------------------------------
sum((y1-y2).^2)