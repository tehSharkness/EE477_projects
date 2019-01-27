%b
ww = -pi:(pi/200):pi;

H1 = ((2.*cos(ww) + 1)/3).*exp(-j.*ww);

subplot(2,1,1)
plot( ww, abs(H1) ) %<-- Magnitude
title('not from summation')
subplot(2,1,2)
plot( ww, angle(H1) ) %<-- Phase
xlabel('NORMALIZED FREQUENCY')



%c
figure(2)
bb = 1/3*ones(1,3);
H2 = freqz( bb, 1, ww);
subplot(2,1,1)
plot( ww, abs(H2) ) %<-- Magnitude
title('from summation')
subplot(2,1,2)
plot( ww, angle(H2) ) %<-- Phase
xlabel('NORMALIZED FREQUENCY')
