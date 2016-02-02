dt=.1; 

t=[0:dt:100];
x=cos(t); 
subplot(4,1,1); 
plot(t,x); 

y=sin(t);
subplot(4,1,2); 
plot(t,y); 

[a,b]=xcorr(x,y,'unbiased'); 
subplot(4,1,3); 
plot(b*dt,a);
title('unbiased')

[a,b]=xcorr(x,y,'biased'); 
subplot(4,1,4); 
plot(b*dt,a);
title('biased')