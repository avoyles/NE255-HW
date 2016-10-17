clear all; clc;

% set plotting resolution
n = 100;

% Set degree and order of spherical harmonics;
l = 0;
m = 0;

% Set up angular coordinates for plotting
% theta = linspace(0,180,n); % degrees
% phi   = linspace(0,360,n); % degrees
theta = linspace(0,pi,n); % radians
phi   = linspace(0,2*pi,n); % radians

% Create grid for plotting
[phi,theta] = meshgrid(phi,theta);

% R = abs((sh_ylm(l,m,theta,phi)));

% Imaginary component
R2 = imag((sh_ylm(l,m,theta,phi))).^2;
% Real component
R = real((sh_ylm(l,m,theta,phi))).^2;

% Surface plot w/o mesh lines
surf(R.*sin(theta).*cos(phi),R.*sin(theta).*sin(phi),R.*cos(theta),R,'EdgeColor','none')
% hold on;
% surf(R2.*sin(theta).*cos(phi),R2.*sin(theta).*sin(phi),R2.*cos(theta),'EdgeColor','none')
%
% hold off;

% Mesh lines on
% surf(R.*sin(theta).*cos(phi),R.*sin(theta).*sin(phi),R.*cos(theta))

h=colorbar;
light
lighting phong
axis tight equal
view(40,30)
xlabel('x (a.u.)')
ylabel('y (a.u.)')
zlabel('z (a.u.)')

title_str = ['$\left|Y^{m=', num2str(m), '}_{\ell=', num2str(l), '}\right|^2$'];

xlabel(h,title_str,'interpreter','latex','fontsize',15);
% title(title_str,'interpreter','latex','fontsize',15);
% title(['|Y^{m=', num2str(m), '}_{l=', num2str(l), '}|^2'])

% export_fig Y00.pdf -pdf -transparent