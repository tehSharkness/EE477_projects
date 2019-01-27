function [ zz ] = zoom_img( xx )
%ZOOM_IMG Summary of this function goes here
%   Detailed explanation goes here
zz = zeros(4*length(xx),4*length(xx));

for m = 1:4
    for n = 1:4
        zz(m:4:length(zz),n:4:length(zz)) = xx;
    end
end