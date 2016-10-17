function [ P_l ] = legendre_l(l, x )
%legendre_l Returns the normal Legendre polynomial P_l(x)
% This function returns the evaluated l-th degree Legdendre polynomial P_l(x):
%
% P_l(x) = (1/(2^l l!)) * d^l/dx^l ((x^2-1)^l)  (analytic form)
%        = 2^l * sum(k=0 --> l) [ x^k * (l, k) * ((l+k-1)/2, l)] (explicit form)
%
% (l, k) = Binomial Coefficient
%        = l! / (k! (l-k)!)

% Initialize sum over k
ksum = 0;

for k=0:l
    ksum = ksum + ( (factorial(l)./(factorial(k).*factorial(l-k)) )^2 .* (x-1).^(l-k) .* (x+1).^k );
%     ksum = ksum + (x.^k .* (factorial(l)./(factorial(k).*factorial(l-k)) ) .* (factorial((l+k-1)/2)./(factorial(l).*factorial(((l+k-1)/2)-l)) ));
end


% 
% 
% 
% % Indicies for summation
% k = 0:l;
% 
% % Initialize x^k
% vec = zeros(1,length(k));
% vec = 

%  P_l =  2^l .* ksum
  P_l =   ksum./(2^l);




end

