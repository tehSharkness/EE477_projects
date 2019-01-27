close all
clear all
T = 2;

E5 = 56;
D5sh = 55;
D5 = 54;
C5 = 52;
B4 = 51;
A4 = 49;
G4sh = 48;
C4 = 40;
E4 = 44;
G4 = 47;
A3 = 37;
G3sh = 36;
E3 = 32;
A2 = 25;
E2 = 20;
F5 = 57;
E6 = 68;
F4 = 45;
C3 = 28;
G3 = 35;
C4 = 40;
G2 = 23;
B3 = 39;

pp = 0.125;
p = 0.25;
mf = 1;


keys = [ ...
            E5 D5sh ... 
            E5 D5sh E5 B4 D5 C5 ...
            A4 0 C4 E4 A4 ...
            B4 0 E4 G4sh B4 ...
            C5 0 E4 E5 D5sh ...
            ... %end of line 1
            E5 D5sh E5 B4 D5 C5 ...
            A4 0 C4 E4 A4 ...         
            ];

dur = [ ...
    (1/16*T*ones(1,2)) ...
    (1/16*T*ones(1,6)) ...
    (1/8*T*ones(1,1)) (1/16*T*ones(1,4)) ...
    (1/8*T*ones(1,1)) (1/16*T*ones(1,4)) ...
    (1/8*T*ones(1,1)) (1/16*T*ones(1,4)) ...
    ... %end of line 1
    (1/16*T*ones(1,6)) ...
    (1/8*T*ones(1,1)) (1/16*T*ones(1,4)) ... 
    ];


totaltime = sum(dur);
fs = 11025;
xx = zeros(1,sum(dur)*fs+1);
n1 = 1;
for kk = 1:length(keys)
    keynum = keys(kk);
    
    tone = note(keynum, dur(kk));
    
    n2 = n1 + length(tone) - 1;
    xx(n1:n2) = xx(n1:n2) + tone;
    n1 = n2;
end

%soundsc( xx, fs )

 figure(1),plot(xx);

window = Hann_window(2000);
Noverlap = 1900;
Nfft = 1024;
fs = 11025;

figure(2)
[B,F,T] = SPECTROGRAM(xx,window,Noverlap,Nfft,fs);

figure(3),plot(F,B),axis([0 1000 0 200])

[M,N] = size(B);

P = ones(N,3);

for k = 1:N
    [peaks locs] = pkpick(B(:,k), 50, 1);
    if(length(peaks) > 0)
        P(k,1) = peaks;
        P(k,2) = k;
        P(k,3) = F(locs);  
    else
        P(k,1) = 0;
        P(k,2) = k;
        P(k,3) = 0;
    end
end

Q = diff(P(:,3));
Q = find(abs(Q) > 20 );

Q = [0 ; Q];

time = totaltime/N;
durs = diff(Q).*time;

Q = Q';
Q = Q(2:length(Q));
Q = Q(:);

durs = durs.*8; %get numbrs close to whole numbers
durs = floor(durs + .5);    %round down to whole numbers
durs = durs./12; %put the smallest notes at 1/8th notes

notes = P(Q-1,3);

for k = 1:length(notes)
    if (notes(k) ~= 0)
        notes(k) = ((12*log(notes(k))-12*log(55)+ 13*log(2))/log(2));
    end
end
notes = floor(notes + .5);

durs = durs';
notes = notes';

wrinotes(notes, durs, 's')




% sorting stuff
% Q = sortrows(P,3);
% D = diff(Q(:,3));
% D2 = diff(Q(:,2));
% e = find(abs(D) > 20);
% e2 = find(abs(D2) > 5);


%  sams first stuff
% e = e(find(diff(e) > 2));

% times = Q(e+1,2);
% 
% freqs = Q(e+1,3);
% 
% notes = [times freqs];
% 
% notes = sortrows(notes,1);