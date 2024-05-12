a = 1/4;
b = 1/16;
m = 8;
n = 8;
t = [-5:0.01:5];
x = cos(t) - a*cos(m*t) + b*sin(n*t);
y = sin(t) + a*sin(m*t) + b*cos(n*t);
s = 10;
for k = 1:0.5:s
    plot (x/k, y/k)
    hold on;
end