function [ w ] = Hann_window( L )
%HANN_WINDOW Summary of this function goes here
%   Detailed explanation goes here
w = 1/2-1/2*cos(2*pi*(1:L)/(L+1));
w = w(:);