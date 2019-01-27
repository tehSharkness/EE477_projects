close all;
clear all;

M = 256;
N = 256;

fo = 1;
fs = 50;


n = (0:M-1);

a = cos(2*pi*fo/fs*n);

figure(5),plot(n,a)

xx = [];

for k = 1:N
    xx = [xx ; a];
end;

show_img(xx,1)

% show_img(clip(xx,0,255),2)
% 
% show_img(xx+1,3)

load lenna
show_img(xx,2)

figure(3),plot(n,xx(200,1:256))

%negative image

disp('Max value')
maxi = max(max(xx))
disp('Min value')
mini = min(min(xx))

neg = -xx+maxi+mini;
hold on
plot(n,neg(200,1:256),'r')
hold off

show_img(neg,4)