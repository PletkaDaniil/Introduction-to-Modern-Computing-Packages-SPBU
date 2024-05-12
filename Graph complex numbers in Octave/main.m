x = linspace(-2, 2, 60);
y = linspace(-2, 2, 60);

[X, Y] = meshgrid(x, y);

Z = X + i*Y;
n = 10;
max_val = 1e10;
for k = 1:n
    Z = Z.^2 + (X + i*Y);
    Z(abs(Z) > max_val) = max_val;
    surf(X, Y, abs(Z));
    hold on;
end

xlabel('Re(z)');
ylabel('Im(z)');
zlabel('|z|');
title('График комплексных чисел');
hold off;