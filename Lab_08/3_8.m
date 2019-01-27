close all
clear all

load lenna

b1 = [1 -1];

yh = conv2(xx,b1);
yv = conv2(xx,b1(:));

yh = yh(:,2:length(yh));
yv = yv(2:length(yv),:);

thr = 18;
yy = (abs(yh)>thr)|(abs(yv)>thr);

neg_yy = -yy+max(max(yy))+min(min(yy));

figure(1)
subplot(1,2,1),show_img(xx,0)
subplot(1,2,2),show_img(neg_yy,0)

figure(2)
subplot(2,1,1),plot(1:length(xx),xx(94,:))
subplot(2,1,2),plot(1:length(yy),yy(94,:))