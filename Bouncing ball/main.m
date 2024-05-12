n = 10;
g = 9.81 * 3;
starter_coord = [10; 0];
times = [0 n];

f = @(t, y) [y(2); -g];

position = [];
for iteration = 1:80
    opt = odeset('Events', @func);
    [t, y, timer, y_event, ind] = ode45(f, times, starter_coord, opt);
    position = [position; t, y];
    if isempty(ind)
        break;
    else
        starter_coord = [0; -0.9 * y_event(2);];
        times = [timer, n];
    end
end

position_t = position(:,1);
position_y = position(:,2);

figure;
xlabel('t');
ylabel('f(t)');
title('Ball bouncining');
hold on;
for i = 1:(length(position_t) - n * 4)
    plot(position_t(1:i), position_y(1:i), 'b-', 'LineWidth', 2);
    pause(0.02);
end