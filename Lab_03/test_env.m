fs = 11025;
dur =1;

tA = 0:(1/fs):0.15*dur;
tD = 0.15*dur:(1/fs):0.25*dur;
tS = 0.25*dur:(1/fs):0.85*dur;
tR = 0.85*dur:(1/fs):dur;

EA = 7.5*tA;
ED = -1.5*tD + 1.35;
ES = -0.5*tS + 1.1;
ER = -4.5*tR + 4.5;

E = [EA ED ES ER];
t = [tA tD tS tR];

plot(t,E)