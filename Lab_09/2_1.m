close all
clear all

%2
%2.a
xss = zeros(1,19);
samp = [1 3 -2 4 2 -1 -3];
xss(1:3:19) = samp;

%2.b
coeffs = [1/3 2/3 1 2/3 1/3];
output = firfilt(xss,coeffs);

figure(1)
subplot(2,1,1),plot(1:19,xss),title('xss'),axis([0 25 -4 4])
subplot(2,1,2),plot(1:length(output),output),title('output'),axis([0 25 -4 4])