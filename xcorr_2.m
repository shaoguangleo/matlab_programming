dt=1; 

t=[0:dt:8];
x=[1,2,3,4,5,4,3,2,1] 
subplot(4,1,1); 
stem(t,x); 

y=[4,5,6,7,8,6,5,4,3]
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