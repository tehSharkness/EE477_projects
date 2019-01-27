%a
z1 = -1 + j*.3;
z2 = .8 + j*.7;

figure(1)
zvect(z1)
hold
zvect(z2)

disp('z1'),zprint(z1)
disp('z2'),zprint(z2)

%b
disp('conj(z1)'),zprint(conj(z1))
disp('conj(z2)'),zprint(conj(z2))

disp('1/z1'),zprint(1/z1)
disp('1/z2'),zprint(1/z2)

%c
c = [z1 z2];
disp('z1+z2'),zprint(z1+z2)

figure(2)
zcat(c)
hold
zvect(z1+z2)

%d
disp('z1*z2'),zprint(z1*z2)
disp('z1/z2'),zprint(z1/z2)

figure(3)
zvect(z1*z2)
hold
zvect(z1/z2)