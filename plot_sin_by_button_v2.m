function plotaab

hFig = figure('units','normalize','position',[0.4 0.4 0.3 0.5])

hpush = uicontrol('parent',hFig,'style','pushbutton','String','PLOT','units','normalize','position',[0.4 0.4 0.3 0.2]);

set(hpush,'callback',@mycallback);
                

    function mycallback(hobj,event)
        figure;
        x = 0:pi/20:2*pi;
        y = sin(x);
        plot(x,y);