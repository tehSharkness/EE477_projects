%a
f0 = 25;
dur = 3/f0;
%--------------------------
N = 5;
k = [1:2:N];
fk = k*f0;
Zk = j./k;
fs=20*N*f0;

x1 = sumcos(fk,Zk,fs,dur);

t = [0:1/fs:dur];
subplot(3,1,1),plot(t,x1),xlabel('Time'),ylabel('x1(t)'),title('N = 5')
%---------------------------
N = 10;
k = [1:2:N];
fk = k*f0;
Zk = j./k;
fs=20*N*f0;

x2 = sumcos(fk,Zk,fs,dur);

t = [0:1/fs:dur];
subplot(3,1,2),plot(t,x2),xlabel('Time'),ylabel('x2(t)'),title('N = 10')
%---------------------------
N = 25;
k = [1:2:N];
fk = k*f0;
Zk = j./k;
fs=20*N*f0;

x3 = sumcos(fk,Zk,fs,dur);

t = [0:1/fs:dur];
subplot(3,1,3),plot(t,x3),xlabel('Time'),ylabel('x3(t)'),title('N = 25')
%---------------------------