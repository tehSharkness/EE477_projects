function [ key ] = dtmfdeco ( xx, fs )
%DTMFDECO Returns the key number of corresponding to the DTMF waveform, xx.
% 
%     ff = sampling freq (DEFAULT = 8000 Hz if not specified).
% 
if (nargin < 3), fs = 8000; end;

tone_pairs = [  697 697 697 770 770 770 852 852 852 941 941 941; ...
                1209 1336 1477 1209 1336 1477 1209 1336 1477 1336 1209 1477 ];

top = [];
bottom = [];
            
for m = 1:length(tone_pairs)
    top = [top dtmfscor( xx, tone_pairs(1,m), 64, fs )];
    bottom = [bottom dtmfscor( xx, tone_pairs(2,m), 64, fs )];
end;

for m = 1:length(top)
    if ( (top(m) == 1) && (bottom(m) == 1) )
        key = m;
    end;
end;