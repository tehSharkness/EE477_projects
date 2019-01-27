function [B,F,T] = SPECTROGRAM(xx,window,Noverlap,Nfft,fs)
%SPECTROGRAM Summary of this function goes here
%   Detailed explanation goes here

L = length(window);
if L<=1
   if( L==0 ), L = Nfft, end
   L = window;
   window = hanning(L);
end
if size(xx,1)==1
   xx = xx(:);
end
shift = L-Noverlap;
if( shift<0 )
   error('SPECTGR: overlap must be less than window length')
end
Lx = length(xx);
num_segs = 1 + fix( (Lx-L)/shift );
B = zeros( Nfft/2+1, num_segs );     %- Pre-allocate the matrix
iseg = 0;
while( iseg<num_segs ) 
    nstart = 1 + iseg*shift;
    xsegw = window .* xx( nstart:nstart+L-1);
    XX = fft( xsegw, Nfft );
    iseg = iseg + 1;
    B(:,iseg) = XX(1:Nfft/2+1);    
end
F = (0:(Nfft/2))/Nfft * fs;
T = (L/2 + shift*(0:num_segs-1) ) / fs;

B = abs(B);

imagesc( T, F, B ), axis([0 5 0 1000]); colormap(1-gray(256)); axis xy;