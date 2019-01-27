clear all

dur = 9;
f0 = 1/3;

%---------------plot of N=5
N = 5;
fs = 10*N*f0;
t = -3:1/fs:6;
k = (1:N);
w0 = 2*pi*k/3;

Ak1 = (j./(w0) + 1./(w0.^2)) - exp(-j.*w0*2).*(1./w0.^2);
Ak2 = exp(-j.*w0*2).*(-2./(w0.^2)) - exp(-j.*w0).*(2*j./w0 - 2./(w0.^2)); 
Ak3 = (-1/2).*((1./(2*pi - w0)).*(exp(-j.*w0) -1) - (1./(-2*pi-w0)).*(exp(-j.*w0)-1));
f = f0.*k;

Ak1 = (2/3)*Ak1;
x1 = sumcos(f, Ak1, fs, dur);
x1 = x1 + (1/6);

Ak2 = (2/3)*Ak2;
x2 = sumcos(f, Ak2, fs, dur);
x2 = x2 + (1/3);

Ak3 = (2/3)*Ak3;
Ak3(3) = -j/3;
x3 = sumcos(f, Ak3, fs, dur);

x4 = x3 + x2 + x1;
h = plot (t,x4);
set(h,'LineWidth',2.0)
set(h,'Color','black')
axis([-3 6 -2 3]);

%---------------plot of N=25
N = 25;
fs = 10*N*f0;
t = -3:1/fs:6;
k = (1:N);
w0 = 2*pi*k/3;

Ak1 = (j./(w0) + 1./(w0.^2)) - exp(-j.*w0*2).*(1./w0.^2);
Ak2 = exp(-j.*w0*2).*(-2./(w0.^2)) - exp(-j.*w0).*(2*j./w0 - 2./(w0.^2)); 
Ak3 = (-1/2).*((1./(2*pi - w0)).*(exp(-j.*w0) -1) - (1./(-2*pi-w0)).*(exp(-j.*w0)-1));
f = f0.*k;

Ak1 = (2/3)*Ak1;
x1 = sumcos(f, Ak1, fs, dur);
x1 = x1 + (1/6);

Ak2 = (2/3)*Ak2;
x2 = sumcos(f, Ak2, fs, dur);
x2 = x2 + (1/3);

Ak3 = (2/3)*Ak3;
Ak3(3) = -j/3;
x3 = sumcos(f, Ak3, fs, dur);

x4 = x3 + x2 + x1;
hold on;
h = plot (t,x4);
set(h,'LineWidth',2.0)
set(h,'Color','blue')
axis([-3 6 -2 3]);

%---------------plot of N=200
N = 200;
fs = 10*N*f0;
t = -3:1/fs:6;
k = (1:N);
w0 = 2*pi*k/3;

Ak1 = (j./(w0) + 1./(w0.^2)) - exp(-j.*w0*2).*(1./w0.^2);
Ak2 = exp(-j.*w0*2).*(-2./(w0.^2)) - exp(-j.*w0).*(2*j./w0 - 2./(w0.^2)); 
Ak3 = (-1/2).*((1./(2*pi - w0)).*(exp(-j.*w0) -1) - (1./(-2*pi-w0)).*(exp(-j.*w0)-1));
f = f0.*k;

Ak1 = (2/3)*Ak1;
x1 = sumcos(f, Ak1, fs, dur);
x1 = x1 + (1/6);

Ak2 = (2/3)*Ak2;
x2 = sumcos(f, Ak2, fs, dur);
x2 = x2 + (1/3);

Ak3 = (2/3)*Ak3;
Ak3(3) = -j/3;
x3 = sumcos(f, Ak3, fs, dur);

x4 = x3 + x2 + x1;
hold on;
h = plot (t,x4);
set(h,'LineWidth',2.0)
set(h,'Color','green')
axis([-3 6 -2 3]);

%---------------plot of N=500
N = 500;
fs = 10*N*f0;
t = -3:1/fs:6;
k = (1:N);
w0 = 2*pi*k/3;

Ak1 = (j./(w0) + 1./(w0.^2)) - exp(-j.*w0*2).*(1./w0.^2);
Ak2 = exp(-j.*w0*2).*(-2./(w0.^2)) - exp(-j.*w0).*(2*j./w0 - 2./(w0.^2)); 
Ak3 = (-1/2).*((1./(2*pi - w0)).*(exp(-j.*w0) -1) - (1./(-2*pi-w0)).*(exp(-j.*w0)-1));
f = f0.*k;

Ak1 = (2/3)*Ak1;
x1 = sumcos(f, Ak1, fs, dur);
x1 = x1 + (1/6);

Ak2 = (2/3)*Ak2;
x2 = sumcos(f, Ak2, fs, dur);
x2 = x2 + (1/3);

Ak3 = (2/3)*Ak3;
Ak3(3) = -j/3;
x3 = sumcos(f, Ak3, fs, dur);

x4 = x3 + x2 + x1;
hold on;
h = plot (t,x4);
set(h,'LineWidth',2.0)
set(h,'Color','yellow')
axis([-3 6 -2 3]);


%---------------plot of original waveform

t1=0:1/100:1;
y1=sin(2*pi*t1);

y2=[2 0];

y3=[0 1];

t1=-3:1/100:-2;
hold on;
y1=sin(2*pi*t1);
h=plot(t1,y1); hold on
set(h,'LineWidth',2.0)
set(h,'Color','red')

t2=[-2 -1];
h=plot(t2,y2); hold on
set(h,'LineWidth',2.0)
set(h,'Color','red')
t3=[-1 0];
h=plot(t3,y3); hold on
set(h,'LineWidth',2.0)
set(h,'Color','red')

t1=0:1/100:1;
y1=sin(2*pi*t1);
h=plot(t1,y1); hold on
set(h,'LineWidth',2.0)
set(h,'Color','red')

t2=[1 2];
h=plot(t2,y2); hold on
set(h,'LineWidth',2.0)
set(h,'Color','red')
t3=[2 3];
h=plot(t3,y3); hold on
set(h,'LineWidth',2.0)
set(h,'Color','red')

t1=3:1/100:4;
y1=sin(2*pi*t1);
h=plot(t1,y1); hold on
set(h,'LineWidth',2.0)
set(h,'Color','red')

t2=[4 5];
h=plot(t2,y2); hold on
set(h,'LineWidth',2.0)
set(h,'Color','red')
t3=[5 6];
h=plot(t3,y3); hold on
set(h,'LineWidth',2.0)
set(h,'Color','red')



axis([-3 6 -2 3])

title('T_0 = 3 seconds')
xlabel('Time (seconds)')