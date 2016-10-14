clear all; clc;

% xn1  = [0.45, 0.95, 0.2, -0.05, 0.6];
xn = [0.5, 0.9, 0.3, -0.1, 0.5];
% xn1 = [0.49, 0.92, 0.4, -0.09, 0.51];
xn1 = [0.4999, 0.91112, 0.3112, -0.09, 0.4999];

% xn = [1,100,9];
% xn1 = [1.1,99,11];

ea_1 = norm(xn-xn1,1)
er_2 = norm(abs(xn-xn1),1)/norm(abs(xn),1)

ea_2 = norm(xn-xn1,2)
er_2 = norm(abs(xn-xn1),2)/norm(abs(xn),2)

ea_inf = norm(xn-xn1,Inf)
% norm((abs(xn-xn1))./abs(xn),1)
er_inf = norm(abs(xn-xn1),Inf)/norm(abs(xn),Inf)