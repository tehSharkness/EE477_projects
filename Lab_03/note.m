function [ tone ] = note( keynum,dur,volume )
%NOTE Produce a sinusoidal waveform corresponding to a given piano key number
%   
%   usage:  tone = note(keynum,dur)
%
%       tone = the output sinusoidal waveform
%       keynum = the piano keyboard number of the desired note
%       dur = the duration (in seconds) of the output note

fs = 11025;
tt = 0:(1/fs):dur;
if keynum == 0
    tone = 0*tt;
else
    f0 = 440*2^((keynum-49)/12);
    N = 6;
    k = [1:N];
    fk = [k*f0];
    Z = ones(1,length(fk));
    
       
    for h = 1:length(Z)
        Z(h) = 100/(2*h);        
    end
    
    tA = 0:(1/fs):0.15*dur;
    tD = 0.15*dur:(1/fs):0.25*dur;
    tS = 0.25*dur:(1/fs):0.85*dur;
    tR = 0.85*dur:(1/fs):dur;

    EA = 6.67*tA/dur;
    ED = -3*tD/dur + 1.5;
    ES = -0.4*tS/dur + .85;
    ER = -4*tR/dur + 3.9;

    E = [EA ED ES ER];
    
    [tt, tone] = sumcos(fk,Z,fs,dur);
    
    E = E(1:length(tone));                  %envelope
     
    E = E + sin(2*pi*150*tt/dur)*0.025;    %envelope with sine modulation

    
    %plot(tt,E)
    
    tone = tone.*E*volume;   
end