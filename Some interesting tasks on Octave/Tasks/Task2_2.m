a = 10;
b = 2;
n = 4;
k = 14;
t = [-pi/2:0.1:3*pi/2];
r = (a ./ (a + (t - pi/2))) .* (b - sin(k*t) - cos(n*t));
plot(t, r);
