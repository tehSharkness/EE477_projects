close all
clear all

%3
%3.b
load zone

xs = imsample(zone,2);

figure(1)
subplot(1,2,1),show_img(zone,0)
subplot(1,2,2),show_img(xs,0)

%3.c
p = 2;
[M,N] = size(zone);
xp = zone(1:p:M,1:p:N);

figure(2)
subplot(1,2,1),show_img(zone,0)
subplot(1,2,2),show_img(xp,0)

load lenna
p = 2;
[M,N] = size(xx);
xp = xx(1:p:M,1:p:N);

figure(3)
subplot(1,2,1),show_img(xx,0)
subplot(1,2,2),show_img(xp,0)