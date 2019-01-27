%b
f0 = 1000;
dur = 1;
%--------------------------
N = 1;
k = [1:2:N];
fk = k*f0;
Zk = j./k;
fs=20*N*f0;

x1 = sumcos(fk,Zk,fs,dur);
sound(x1,fs)
%--------------------------
N = 2;
k = [1:2:N];
fk = k*f0;
Zk = j./k;
fs=20*N*f0;

x2 = sumcos(fk,Zk,fs,dur);
sound(x2,fs)
%--------------------------
N = 3;
k = [1:2:N];
fk = k*f0;
Zk = j./k;
fs=20*N*f0;

x3 = sumcos(fk,Zk,fs,dur);
sound(x3,fs)
%--------------------------
N = 4;
k = [1:2:N];
fk = k*f0;
Zk = j./k;
fs=20*N*f0;

x4 = sumcos(fk,Zk,fs,dur);
sound(x4,fs)
%--------------------------
N = 5;
k = [1:2:N];
fk = k*f0;
Zk = j./k;
fs=20*N*f0;

x5 = sumcos(fk,Zk,fs,dur);
sound(x5,fs)
%--------------------------