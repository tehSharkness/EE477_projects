function [ ss ] = dtmfscor( xx, freq, L, fs )
%DTMFSCOR Returns: 1 (TRUE) if freq is present in xx, 0 (FALSE) if freq is not present in xx
%     
%     xx = input DTMF signal
%     freq = test frequency
%     L = length of FIR bandpass filter
%     fs = sampling freq (DEFAULT is 8000)
%     
%     The signal detection is done by filtering xx with a length-L
%     BPF, hh, squaring the output, and comparing with an arbitrary
%     setpoint based on the average power of xx.
%     

if (nargin < 4), fs = 8000; end;

hh = [];
ss = [];

for m = 1:length(freq)
    
    hh = [ hh 2/L*cos(2*pi*freq(m)*[1:L]/fs) ];

    
end;

ss = (mean(conv(xx,hh).^2) > mean(xx.^2)/5);