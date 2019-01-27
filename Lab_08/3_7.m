close all
clear all

load echart

b1 = [1 -1];

xx = conv2(conv2(echart,b1),b1(:));

figure(1)
subplot(1,2,1),show_img(echart,0)
subplot(1,2,2),show_img(xx,0)