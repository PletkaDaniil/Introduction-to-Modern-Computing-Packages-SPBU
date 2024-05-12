x = [-pi:0.5:pi];
y = [-pi:0.5:pi];
[X, Y] = meshgrid(x, y);
Z = 20 - X.^2 - Y.^2;

surf(X,Y,Z)
hold on

[u, v, w] = surfnorm (X, Y, Z);
Normals = quiver3 (X, Y, Z, u / 2, v / 2, 5 * w, 'r');
set (Normals, "maxheadsize", 0.25);
hold off

% surf(X,Y,Z)
% x0 = 2;
% y0 = 2;
% z0 = 20 - x0^2 - y0^2;

% u = -2*x0;
% v = -2*y0;
% w = 1;

% hold on
% quiver3(x0, y0, z0, u, v, w, 'r', 'LineWidth', 2)
% hold off