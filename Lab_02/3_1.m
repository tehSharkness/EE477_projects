A = 3;
phi = -.4*pi;
w0 = 2*pi*1250;
t = [-1/1250:1/125000:2/1250];

x = A*exp(j*(w0*t+phi));

subplot(2,1,1),plot(t,real(x)),title('Real'),xlabel('Time')
subplot(2,1,2),plot(t,imag(x)),title('Imaginary'),xlabel('Time')

[x y] = ginput(2);
magnitude = y
angle = - x*180/pi*2*pi*1250
