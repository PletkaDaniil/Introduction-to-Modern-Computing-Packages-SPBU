v0 = 20;
g = 9.81;
h0 = 10;
wall = 20;
wall_height = 6;

t_flight = sqrt(2*h0/g);

x = v0 * t_flight;

if x >= wall
    t_wall = wall / v0;
    y_wall = h0 - 0.5*g*t_wall.^2;
end

t = linspace(0, t_flight, 100);
y = h0 - 0.5*g*t.^2;
x = v0*t;
plot(x, y);
hold on;
plot([wall, wall], [0, wall_height ], 'r');
if wall <= x(length(x)) && y_wall <= wall_height
    disp('Ядро достигнет стены') 
    plot(wall, y_wall, 'g*', 'markersize', 10);
else
    disp('Ядро не достигнет стены')
end
line([0, max(max(x), wall)], [0, 0], 'Color', 'k');
hold off;

xlabel('Расстояние');
ylabel('Высота');
title('Траектория полета ядра');