t = [-1/15:1/3000:2/15];

x1 = 5*cos(2*pi*15*t+.5*pi);
x2 = 5*cos(2*pi*15*t-.25*pi);
x3 = 5*cos(2*pi*15*t+.4*pi);
x4 = 5*cos(2*pi*15*t-.9*pi);

subplot(3,2,1),plot(t,x1), axis([-.1 .15 -5 5]), title('x1')
subplot(3,2,2),plot(t,x2), axis([-.1 .15 -5 5]), title('x2')
subplot(3,2,3),plot(t,x3), axis([-.1 .15 -5 5]), title('x3')
subplot(3,2,4),plot(t,x4), axis([-.1 .15 -5 5]), title('x4')

x5 = x1+x2+x3+x4;


subplot(3,1,3),plot(t,x5), axis([-.1 .15 -5 5]), title('x5')
[x y] = ginput(1);
magnitude = y
phase = -x*2*pi*15*(180/pi)

z1 = 5*exp(j*.5*pi);
z2 = 5*exp(j*-.25*pi);
z3 = 5*exp(j*.4*pi);
z4 = 5*exp(j*-.9*pi);
z5 = z1+z2+z3+z4;

disp('z1'),zprint(z1)
disp('z2'),zprint(z2)
disp('z3'),zprint(z3)
disp('z4'),zprint(z4)
disp('z5'),zprint(z5)

f = [z1 z2 z3 z4];

figure(2)
zcat(f)
hold
zvect(z5)