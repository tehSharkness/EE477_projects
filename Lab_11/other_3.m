function  [   ] = other_3( xx )

[peaks,freqs,locs] = pkpick(xx, .8, 100);

keys2 = abs(floor((12*log(freqs)-12*log(55)+13*log(2))/log(2)));

wrinotes(keys2,1/4*ones(1,length(keys2)),'f')