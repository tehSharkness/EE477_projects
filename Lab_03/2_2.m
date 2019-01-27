%a
A = 100;
f0 = 1100;
w0 = 2*pi*f0;
phi = 0;

fs = 8000;

t = [0:1/fs:2];

x1 = A*cos(w0*t+phi);

soundsc(x1,fs)

%b
A = 100;
f0 = 1650;
w0 = 2*pi*f0;
phi = pi/3;

x2 = A*cos(w0*t+phi);

soundsc(x2,fs)

xx = [x1 zeros(1,2000) x2];

soundsc(xx,fs)
%c

fs = 16000;

soundsc(xx,fs)