clear all
close all

%5.1
fsamp = 11025;
Ts = 1/fsamp;
tt = 0:Ts:0.5;
[y1,y2] = woodwenv(.1,.35,.05,fsamp);
tt = tt(1:length(y1));

figure(1)
subplot(2,1,1), plot(tt,y1), grid on
subplot(2,1,2), plot(tt,y2), grid on

%5.2

ynorm = .5 + .5*sin(pi*[0:0.01:1]);

figure(2)
subplot(2,1,1), plot(ynorm)
alpha = 5;
beta = 3;
ynew = alpha*ynorm+beta;
subplot(2,1,2),plot(ynew)
max(ynorm),min(ynorm)
max(ynew),min(ynew)

%5.3

[y1,y2] = woodwenv(.1625, .275, .3, 11025);

tt = 0:1/11025:2;
tt = tt(1:length(y1));

y2new = scale(y2,-2,4);

figure(3)
subplot(2,2,1), plot(tt,y1),title('y1 Envelope')
subplot(2,2,3), plot(tt,y1),title('A(t) Envelope')
subplot(2,2,2), plot(tt,y2),title('y2 Envelope')
subplot(2,2,4), plot(tt,y2new),title('I(t) Envelope')

%5.5

[tt, xnote] = clarinet(440*2^(0/12), y1, y2new, 2, fsamp);
soundsc( xnote, fsamp);

[tt, xnote] = clarinet(440*2^(2/12), y1, y2new, 2, fsamp);
soundsc( xnote, fsamp);

[tt, xnote] = clarinet(440*2^(4/12), y1, y2new, 2, fsamp);
soundsc( xnote, fsamp);

[tt, xnote] = clarinet(440*2^(5/12), y1, y2new, 2, fsamp);
soundsc( xnote, fsamp);

[tt, xnote] = clarinet(440*2^(7/12), y1, y2new, 2, fsamp);
soundsc( xnote, fsamp);

[tt, xnote] = clarinet(440*2^(9/12), y1, y2new, 2, fsamp);
soundsc( xnote, fsamp);

[tt, xnote] = clarinet(440*2^(11/12), y1, y2new, 2, fsamp);
soundsc( xnote, fsamp);

[tt, xnote] = clarinet(440*2^(12/12), y1, y2new, 2, fsamp);
soundsc( xnote, fsamp);

figure(4)
plot(tt,xnote)

