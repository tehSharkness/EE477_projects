A1 = 13; %amplitude of x1
A2 = 21; %amplitude of x2
phi1 = 46*pi/180; %phase of x1
phi2 = -30*pi/180; %phase of x2

period = 1/3000; 
fs = 3000*100; %sampling frequency

t = -period:1/fs:2*period;

x1 = A1*cos(2*pi*3000*t + phi1);
x2 = A2*cos(2*pi*3000*t + phi2);

subplot(3,1,1),plot(t,x1),grid on,title('3.1'),xlabel('TIME (sec)'),ylabel('x1(t)')
subplot(3,1,2),plot(t,x2),grid on,xlabel('TIME (sec)'),ylabel('x2(t)')

x3 = x1 + x2;

subplot(3,1,3),plot(t,x3),grid on,xlabel('TIME (sec)'),ylabel('x3(t)')

%the user clicks on the highest peak nearest to t=0 of each signal
%the program automatically displays magnitude and phase
x = 1:3;
y = 1:3;
[x,y] = ginput(3);
angle = - x*180/pi*2*pi*3000
magnitude = y

