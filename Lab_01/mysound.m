dur = 1.0;
fs = 8000;
tt = 0:(1/fs):dur;
xx = sin(2*pi*2000*tt);
sound(xx,fs)