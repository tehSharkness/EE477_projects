close all
clear all

w = -pi:pi/100:pi;

%3.1
%a
load echart

b7 = 1/7*ones(1,7);

x1 = echart(256-33,:);

out1 = firfilt(b7,x1);

figure(1)
subplot(2,1,1),plot(1:256,x1),title('Original Signal')
subplot(2,1,2),plot(1:256,out1(1:256)),title('Filtered Signal')

% figure(2),freqz(b7,1,w)

%b
b1 = [1 -1];

x2 = echart(:,99);

out2 = firfilt(b1,x2);

figure(3)
subplot(2,1,1),plot(1:257,x2),title('Original Signal')
subplot(2,1,2),plot(1:257,out2(1:257)),title('Filtered Signal')

% figure(4),freqz(b1,1,w)

%3.2
%a
y1 = conv2(echart,b7);

figure(5)
subplot(1,2,1),show_img(echart,0),title('xx')
subplot(1,2,2),show_img(y1,0),title('y1')

x3 = y1((256-33),:);
figure(6)
% subplot(2,1,1),plot(1:256,out1(1:256)),title('Original Filtered Signal')
% subplot(2,1,2),plot(1:256,x3(1:256)),title('conv2 Filtered Signal')
hold on
plot(1:256,out1(1:256),'b-')
plot(1:256,x3(1:256),'r--')
hold off

%b
y2 = conv2(y1,b7(:));

figure(7)
subplot(1,3,1), show_img(echart,0), title('xx');
subplot(1,3,2), show_img(y1,0), title('y1');
subplot(1,3,3), show_img(y2,0), title('y2');
%show_img(y2,7),title('y2')

%c
b21 = 1/21*ones(1,21);

y1 = conv2(echart,b21);
y2 = conv2(y1,b21(:));

figure(8)
subplot(1,2,1),show_img(y1,0),title('y1')
subplot(1,2,2),show_img(y2,0),title('y2')