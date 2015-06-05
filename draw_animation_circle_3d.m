% the program will draw a animation in 3D
t = -10*pi : pi/250 : 10*pi;

%do not allow close the figure before the plot finished
set(gcf,'CloseRequestFcn','');
comet3((cos(2*t).^2).*sin(t),sin(2*t).^2.*cos(t),t);
%resume the close function on the right-upper corner
set(gcf,'closeRequestFcn','closereq');