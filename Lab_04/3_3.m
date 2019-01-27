[xx tt] = beat( 10, 10, 2000, 32, 11025, .26 );

figure(1)
specgram(xx,2048,fsamp); %colormap(1-gray(256))

figure(2)
specgram(xx,16,fsamp); %colormap(1-gray(256))