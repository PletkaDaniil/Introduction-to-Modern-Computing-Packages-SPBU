n = 4;
m = 5;
a = 7;
t = [0:0.01:2*m*pi];
x = (1 + n/m)*cos((n/m)*t) - a*(n/m)*cos((1 + n/m)*t);
y = (1 + n/m)*sin((n/m)*t) - a*(n/m)*sin((1 + n/m)*t);
plot(x,y);