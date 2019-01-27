t = (-10:.01:20);
x = 3 * cos((pi/5)*t - (pi/4));
plot(t,x), title('x(t) = 3cos((pi/5)*t - pi/4)'), ylabel('x(t)'), xlabel('t');

theta = (0:.01:6*pi);
y = cos(theta);
plot(theta, y), title('y = cos(theta)'), ylabel('y'), xlabel('theta');

t = (0:.01:30);
y = cos(0.2*pi*t);
plot(t, y), title('y = cos(0.2*pi*t)'), ylabel('y'), xlabel('t');

t = [-.03:.0001:.03];
x = 20*cos(2.*pi.*40.*(t - .005));
plot(t,x)

