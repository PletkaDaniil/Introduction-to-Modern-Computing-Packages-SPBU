import matplotlib.pyplot as plt
import numpy as np

def f(t):
    return np.arctan(-0.0012*t**3 + 0.4*t**2+0.616*t + 6120) + 0.65*np.sin(0.24*t + 1.23) - 0.27*np.cos(0.21*t-0.17) - ( (np.sin(0.34*t + 0.16)) / (1 + 0.03*(t - 370.5) ** 2))

t = np.linspace(0, 1000, 1000000)
y = f(t)
# plt.style.use('ggplot')
plt.figure(figsize=(10, 6))
plt.plot(t, y)
plt.title('График функции f(t)')
plt.xlabel('t')
plt.ylabel('f(t)')
for i in t:
    if f(i) < 0.2:
        # plt.scatter(i - 1, f(i - 1))
        plt.scatter(i, f(i))
        print(i, f(i))
        break
plt.show()