function [ tone ] = note( keynum,dur )
%NOTE Produce a sinusoidal waveform corresponding to a given piano key number
%   
%   usage:  tone = note(keynum,dur)
%
%       tone = the output sinusoidal waveform
%       keynum = the piano keyboard number of the desired note
%       dur = the duration (in seconds) of the output note
%       volume = the volume of the note

fs = 11025;
tt = 0:(1/fs):dur;
if keynum == 0
    tone = 0*tt;
else
    f0 = 440*2^((keynum-49)/12);
    
    tone = cos(2*pi*f0*tt);
end