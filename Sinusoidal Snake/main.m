radius = 0.5;
x_start = 0;
starter = 0;
ender = 2 * pi;
snake_handles = snake(6, radius, x_start, starter, ender);

set(gca, 'xlim',[-1 20],'ylim', [-1.5 1.5]);
axis equal

starter = 0;
ender = 2 * pi;

t = linspace(starter, ender, 1000);
x_center = x_start;
y_center = sin(x_center);
x_points = radius .* cos(t) + x_center;
y_points = radius .* sin(t) + y_center;
while(x_start <= 20)
  for i = 1:6
    set(snake_handles(i),'XData', x_points, 'YData', y_points);
    x_center = x_center + radius*pi/2;
    y_center = sin(x_center);
    x_points = radius .* cos(t) + x_center;
    y_points = radius .* sin(t) + y_center;
  end
  pause(0.005)
  x_start = x_start + 0.1;
  x_center = x_start;
end
