clc;
clear;

figure(1);

x = 0:pi/50:2*pi;
y=sin(x);

h = plot(x,y);

%keep the axis value to make all frame display in one axie
axesValue = axis;

%create the animation
for ii = 1:10
    for jj = 1:length(x)*ii/10
        set(h,'xdata',x(1:jj),'ydata',y(1:jj),'color','r');
        axis(axesValue);
    end
    A(ii) = getframe();
end

%play 3 times
movie(A,3);

set(gcf,'closeRequestFcn','closereq');