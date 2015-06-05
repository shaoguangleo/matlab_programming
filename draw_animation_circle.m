% the program will draw a animation
theta = 0:0.001:2*pi;
r = 10;

x = r*cos(theta);
y = r*sin(theta);

comet(x,y);