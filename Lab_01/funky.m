tt = -1:.05:3;
xx = sin(2*pi*0.789*tt);
plot(tt,xx),grid on,title('TEST PLOT of SINUSOID'),xlabel('TIME (sec)')

yy = .5*cos(2*pi*.789*tt);
hold
plot(tt,yy)