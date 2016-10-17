function [ Y_lm ] = sh_ylm(l, m, theta, phi )
%sh_lm Returns the value of the Spherical Harmonic function Y_l^m(theta,phi)
% This function returns the evaluated Spherical Harmonic function Y_l^m(theta,phi):
%
% theta and phi coordinates must be supplied in radians.


Y_lm = (-1).^m .* sqrt(((2*l+1)/(4*pi)).*(factorial(l-m)/factorial(l+m))) .* legendre_lm(l,m,cos(theta)) .*exp(m.*phi.*1i);




end

