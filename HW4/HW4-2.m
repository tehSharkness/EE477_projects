clear all
close all


f0 = 1/3;
N = 50;
fs = 50*N*f0;
dur = 9;
t = -3:1/fs:6;

A0 = .5;

k = [1:N];
w0 = 2*pi*k/3;

Ak1 = (-1./(j*w0) + 1./(w0.^2)) - exp(-j.*w0*2).*(1./w0.^2);
Ak2 = exp(-j.*w0*2).*(-2./(w0.^2)) - exp(-j.*w0).*(2*j./w0 - 2./(w0.^2)); 
Ak3 = (-1/2)*((1/(2*pi - w0))*(exp(-j*w0) -1) - (1/(-2*pi-w0))*(exp(-j.*w0)-1))
f = f0.*k;

Ak3(3) = 0;

Ak1 = (2/3)*Ak1;
x1 = sumcos(f, Ak1, fs, dur);
x1 = x1 + (1/6);
plot (t,x1)
axis([-3 6 -2 3]);

figure(2);
Ak2 = (2/3)*Ak2;
x2 = sumcos(f, Ak2, fs, dur);
x2 = x2 + (1/3);
plot (t,x2)
axis([-3 6 -2 3]);


%    Ak3(N) = (-1/2)*((1/(2*pi - 2*pi*N/3))*(exp(-i*(2/3)*pi*N) -1) - (1/(-2*pi - 2*pi*N/3))*(exp(-i*(2/3)*pi*N) -1));
%figure(3);
%x3 = (2/3)*sumcos(f,Ak3, fs, dur);
%x3 = x3 + A0;

%plot (t,x3)
