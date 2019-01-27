close all
clear all

n = 0:30;
fs = 10;
xx = cos(2*pi*3/fs*n);

figure(1),plot(n,xx)

window = Hann_window(16);
Noverlap = 10;
Nfft = 1024;

[S,F,T] = SPECTROGRAM(xx,window,Noverlap,Nfft,fs);

figure(2),plot(abs(S))

figure(3),imagesc(T,F,abs(S))

figure(4),freqz(xx,1,-pi:pi/100:pi)