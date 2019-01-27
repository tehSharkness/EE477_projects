close all
clear all

%2.1

load lab06dat

%c

b1 = [0 1 .5 -2];
b2 = [1 1 0 -.25];

firfilt(b1,b2)

%d
b1 = [1/3 1/3 1/3];
b2 = [1/5 1/5 1/5 1/5 1/5];

y = firfilt(b1,b2);

freqz(y,1, 1024)