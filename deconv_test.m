% global parameters
total_point = 1000;
N = 0:1000;
fs = 1024;
t = N./fs;
% Here define the gaussian function
% For example: g = sin(x)
x=(0:0.1:10)';
g = gaussmf(x,[1 5 ]);

subplot(221);
plot(g);
title('Gaussian function');

% Here define the total image
% For exmaple : f_total = sin(x) + 5cos(x) + noise
x = wgn(1,total_point+1,2);

f_total = sin(2*pi*t) + 5*cos(4*pi*t)  + x;

subplot(222);
plot(t,f_total);
title('Total value');


% Here to find the max value in the Total value
% and conv with the gaussian function
% TODO here you should find the index of the max value
max_value = max(f_total)
will_sub_value = conv(g,max_value)

subplot(223);
plot(will_sub_value);
title('Will sub value (gaussian * peak_value)');

% The total_value - gaussian*max_value
% TODO Here you should define same vector
subplot(224);
plot(f_total - will_sub_value);
title('The residual result after first deconv');


