function plot_sin_by_button

hFig = figure('units','normalize','position',[0.4 0.4 0.3 0.5])

uicontrol('parent',hFig,'style','pushbutton','String','PLOT','units','normalize','position',[0.4 0.4 0.3 0.2],...
                    'callback',['figure;','x=0:pi/20:2*pi;','y=sin(x);','plot(x,y);']);