clear;
figure;

hslider = uicontrol('style', 'slider',
                    'Units', 'normalized',
                    'position',[0.1, 0.05, 0.8, 0.05],
                    'min', 1,
                    'max', 10,
                    'value', 3,
                    'callback', {@plotstuff});


function plotstuff(h, event)
    R = get(h, 'value');
    syms x y;
    [X, Y] = solve(y == x/2 + 1, (x - 2).^2 + (y - 4).^2 == R.^2, x, y);
    disp(X);
    disp(Y);
    x = linspace(-100, 100, 500);
    y_line = x ./ 2 + 1;
    plot(x, y_line);
    hold on;
    t = linspace(0,2 * pi, 100);
    x_circle = R * sin(t) + 2;
    y_circle = R * cos(t) + 4;
    plot(x_circle, y_circle)
    hold on;
    plot(double(X), double(Y), 'o');
    hold off;
    % y_circ_pos = +sqrt(R .^ 2 - (x - 2) .^2) + 4;
    % y_circ_neg = -sqrt(R .^ 2 - (x - 2) .^2) + 4;
    % plot(x, y_line);
    % hold on;
    % plot(x, y_circ_pos);
    % hold on;
    % plot(x, y_circ_neg);
    axis([-20, 20, -20, 20]);
    grid on;
    axis equal;
end