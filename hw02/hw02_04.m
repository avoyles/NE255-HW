clear all; clc;

h = [1.0 0.5 0.1 0.05 0.01];
N = [8 16 80 160 800];
eps = [8.44660179e-03 2.30286448e-03 9.84273963e-05 2.48043656e-05 9.98488163e-07];

% % Part a)
loglog(h,eps,'-o')
xlabel('Mesh Spacing (a.u.)')
axis([1e-2 1 5e-7 1e-2])
% export_fig hw02_04a2.pdf -pdf -transparent
% 

% % Part b)
% loglog(N,eps,'-o')
% xlabel('Cell Count')
% axis([1 1e3 5e-7 1e-2])
% % export_fig hw02_04b.pdf -pdf -transparent




ylabel('Relative Error')