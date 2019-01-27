function [ tones ] = dtmfdial( nums )
%DTMFDIAL Create a vector of tones which will dial a DTMF (Touch Tone)
%telephone system.
%     usage:
%             nums = vector of numbers ranging from 1 to 12
%             tones = vector containing the corresponding tones.
if (nargin < 1)
    error('DTFMDIAL requires one input');
end
fs = 8000;  %This MUST be 8000, so dtmfdeco() will work.
tt1 = 0:1/fs:0.1;
tt5 = 0:1/fs:0.5;

tones = 0;

one = cos(2*pi*1209*tt5) + cos(2*pi*697*tt5);
two = cos(2*pi*1336*tt5) + cos(2*pi*697*tt5);
three = cos(2*pi*1477*tt5) + cos(2*pi*697*tt5);
four = cos(2*pi*1209*tt5) + cos(2*pi*770*tt5);
five = cos(2*pi*1336*tt5) + cos(2*pi*770*tt5);
six = cos(2*pi*1477*tt5) + cos(2*pi*770*tt5);
seven = cos(2*pi*1209*tt5) + cos(2*pi*852*tt5);
eight = cos(2*pi*1336*tt5) + cos(2*pi*852*tt5);
nine = cos(2*pi*1477*tt5) + cos(2*pi*852*tt5);
star = cos(2*pi*1209*tt5) + cos(2*pi*941*tt5);
zero = cos(2*pi*1336*tt5) + cos(2*pi*941*tt5);
pound = cos(2*pi*1477*tt5) + cos(2*pi*941*tt5);

for i=1:length(nums)
    if nums(i) == 1
        tones = [ tones cos(2*pi*0*tt1) one ];
    elseif nums(i) == 2
        tones = [ tones cos(2*pi*0*tt1) two ];
    elseif nums(i) == 3
        tones = [ tones cos(2*pi*0*tt1) three ];
    elseif nums(i) == 4
        tones = [ tones cos(2*pi*0*tt1) four ];
    elseif nums(i) == 5
        tones = [ tones cos(2*pi*0*tt1) five ];
    elseif nums(i) == 6
        tones = [ tones cos(2*pi*0*tt1) six ];
    elseif nums(i) == 7
        tones = [ tones cos(2*pi*0*tt1) seven ];
    elseif nums(i) == 8
        tones = [ tones cos(2*pi*0*tt1) eight ];
    elseif nums(i) == 9
        tones = [ tones cos(2*pi*0*tt1) nine ];
    elseif nums(i) == 10
        tones = [ tones cos(2*pi*0*tt1) zero ];
    elseif nums(i) == 11
        tones = [ tones cos(2*pi*0*tt1) star ];
    elseif nums(i) == 12
        tones = [ tones cos(2*pi*0*tt1) pound ];
    end
end
    