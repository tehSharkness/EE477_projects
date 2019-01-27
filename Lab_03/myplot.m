clear all;
T = .7*4;

E5 = 56;
D5sh = 55;
D5 = 54;
C5 = 52;
B4 = 51;
A4 = 49;
G4sh = 48;
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
            ];
        
volume = [ ...
            pp pp ... 
            ];


dur = [ ...
         1/16*T*ones(1,2) ...
         ];

fs = 11025;
xx = zeros(1,sum(dur)*fs+1);
n1 = 1;
for kk = 1:length(keys)
    
    tone = note(keys(kk), dur(kk), volume(kk));
    
    n2 = n1 + length(tone) - 1;
    xx(n1:n2) = xx(n1:n2) + tone;
    n1 = n2;
end
 
