function xx = mychirp( f1, f2, dur, fsamp )
%MYCHIRP 	generate a linear-FM chirp signal
%
% usage:    xx = mychirp( f1, f2, dur, fsamp)
%
%   f1 = starting frequency
%   f2 = ending frequency
%   dur= total time duration
%   fsamp = sampling frequency  (OPTIONAL: default is 8000)
%
if( nargin < 4 )    %-- Allow optional input argument
        fsamp = 11025;
end

u = (f2 - f1)/(2*dur);

dt = 1/fsamp;
tt = 0 : dt : dur;
psi = 2*pi*(0 + f1*tt + u*tt.^2);
xx = real( 7.7*exp(j*psi) );
soundsc( xx, fsamp)
specgram(xx, [], fsamp)