function retval = snake(n, radius, x, starter, ender)
    hold on
    y = sin(x);
    res = [];
    for i = 1:n
        t = linspace(starter, ender, 1000);
        x = radius .* cos(t) + x;
        y = radius .* sin(t) + y;
        res(i) = plot(x,y);
        x = x + radius * pi/2;
        y = sin(x);
    end
    retval = res;
end