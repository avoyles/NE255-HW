function [ P_l ] = legendre_lm(l,m, x )
%legendre_lm Returns the associated Legendre polynomial P_l^m(x)
% This function returns the evaluated l-th degree Legdendre polynomial P_l^m(x):
%
% P_l^m(x) = (-1)^m * (1-x^2)^(m/2) * d^m/dx^m (P_l(x))  (analytic form)
%
% (l, k) = Binomial Coefficient
%        = l! / (k! (l-k)!)
%
% See V. Magnasco - Elementary Molecular Quantum Mechanics: Mathematical
% Methods and Applications.

% Initialize sum over k
ksum = 0;


% Zero and positive m
if m>=0
    for k=m:l
        ksum = ksum + ( (factorial(l+m)./(factorial(k).*factorial(l+m-k)) ) .* ((x-1).^(l-k) ./factorial(l-k)) .* ((x+1).^(k-m) ./factorial(k-m)));
        %     ksum = ksum + (x.^k .* (factorial(l)./(factorial(k).*factorial(l-k)) ) .* (factorial((l+k-1)/2)./(factorial(l).*factorial(((l+k-1)/2)-l)) ));
    end
    %  P_l =  2^l .* ksum
    P_l =  (1-x.^2).^(m/2) .*factorial(l) .* ksum./(2^l);
    
else
    m = -1.*m;
    for k=m:l
        ksum = ksum + ( (factorial(l+m)./(factorial(k).*factorial(l+m-k)) ) .* ((x-1).^(l-k) ./factorial(l-k)) .* ((x+1).^(k-m) ./factorial(k-m)));
        %     ksum = ksum + (x.^k .* (factorial(l)./(factorial(k).*factorial(l-k)) ) .* (factorial((l+k-1)/2)./(factorial(l).*factorial(((l+k-1)/2)-l)) ));
    end
    %  P_l =  2^l .* ksum
    P_l = (-1).^m .* (factorial(l-m)/factorial(l+m)) .* (1-x.^2).^(m/2) .*factorial(l) .* ksum./(2^l);
    
end





end

