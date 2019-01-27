clear all

f0 = 1/3;
N = 100;
fs = 2*N*f0;
dur = 9;
t = -3:1/fs:6;

A0 = .5;

k = [1:N];
w0 = 2*pi*k/3;

Ak1 = (-1./(j*w0) + 1./(w0.^2)) - exp(-j.*w0*2).*(1./w0.^2);
Ak2 = exp(-j.*w0*2).*(-2./(w0.^2)) - exp(-j.*w0).*(2*j./w0 - 2./(w0.^2)); 
Ak3 = (-1/2).*((1./(2*pi - w0)).*(exp(-j.*w0) -1) - (1./(-2*pi-w0)).*(exp(-j.*w0)-1));
%mulkeys  Ak3 = (1/(2*j)).*((1./(j.*(2*pi-w0))).*exp(j*(w0))-1)-((1./(j.*(2*pi+w0))).*exp(-j.*(w0))-1);
f = f0.*k;


subplot(2,2,1);
Ak1 = (2/3)*Ak1;
x1 = sumcos(f, Ak1, fs, dur);
x1 = x1 + (1/6);
plot (t,x1)
axis([-3 6 -2 3]);

subplot(2,2,2);
Ak2 = (2/3)*Ak2;
x2 = sumcos(f, Ak2, fs, dur);
x2 = x2 + (1/3);
plot (t,x2)
axis([-3 6 -2 3]);

subplot(2,2,3);
Ak3 = (2/3)*Ak3;
Ak3(3) = -j/3;
x3 = sumcos(f, Ak3, fs, dur);
plot (t,x3)
axis([-3 6 -2 3]);

subplot(2,2,4);
x4 = x3 + x2 + x1;
plot (t,x4)
axis([-3 6 -2 3]);


