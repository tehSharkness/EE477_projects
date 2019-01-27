function [ tt, yy ] = clarinet( f0, Aenv, Ienv, dur, fsamp )
%CLARINET Produce a clarinet note signal
% 
%     usage:
%         yy = clarinet(f0, Aenv, Ienv, dur, fsamp)
%         tt = time vector
%         
%         f0 = note frequency
%         Aenv = the array holding the A(t) envelope
%         Ienv = the array holding the I(t) envelope
%         dur = the amount of time the signal lasts
%         fsamp = the sampling rate

tt = 0:1/fsamp:dur;
tt = tt(1:length(Aenv));

yy = Aenv.*cos(2*pi*2*f0*tt + Ienv.*cos(2*pi*3*f0*tt + 0) + 0);