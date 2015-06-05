% the program will draw a animation
theta = 0:0.001:2*pi;
r = 10;

x = r*cos(theta);
y = r*sin(theta);

%do not allow close the figure before the plot finished
set(gcf,'CloseRequestFcn','');
comet(x,y);
%resume the close function on the right-upper corner
set(gcf,'closeRequestFcn','closereq');