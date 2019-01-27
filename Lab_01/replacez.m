function [ Z ] = replacez( A )
%REPLACEZ Function that replaces the negative elements
%         of a matrix with the number 77
%
%   usage:
%           Z = relacez(A)
%           A = in put matrix whose negative elements are to
%               be replaced with 77
%
Z1 = 77 .* (A<0);
Z2 = A .* (A>0);
Z = Z1 + Z2;