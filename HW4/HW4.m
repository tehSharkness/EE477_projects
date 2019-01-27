clear all
close all

t1=0:1/100:1;
y1=sin(2*pi*t1);

y2=[2 0];

y3=[0 1];

t1=-3:1/100:-2;
y1=sin(2*pi*t1);
h=plot(t1,y1); hold on
set(h,'LineWidth',2.0)

t2=[-2 -1];
h=plot(t2,y2);
set(h,'LineWidth',2.0)
t3=[-1 0];
h=plot(t3,y3);
set(h,'LineWidth',2.0)

t1=0:1/100:1;
y1=sin(2*pi*t1);
h=plot(t1,y1); hold on
set(h,'LineWidth',2.0)

t2=[1 2];
h=plot(t2,y2);
set(h,'LineWidth',2.0)
t3=[2 3];
h=plot(t3,y3);
set(h,'LineWidth',2.0)

t1=3:1/100:4;
y1=sin(2*pi*t1);
h=plot(t1,y1); hold on
set(h,'LineWidth',2.0)

t2=[4 5];
h=plot(t2,y2);
set(h,'LineWidth',2.0)
t3=[5 6];
h=plot(t3,y3);
set(h,'LineWidth',2.0)



axis([-3 6 -2 3])

title('T_0 = 3 seconds')
xlabel('Time (seconds)')



