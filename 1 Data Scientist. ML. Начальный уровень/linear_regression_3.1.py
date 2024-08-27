import numpy as np
from numpy.linalg import inv
import matplotlib
from matplotlib import pyplot as plt

X = np.array([[1,50],[1,60],[1,70],[1,100]])
Y = np.array([[10],[30],[40],[50]])
w = inv(
    (X.T).dot(X)
).dot(X.T).dot(Y)
#define borders of axis
margin = 10
X_min = X[:,1].min()-margin
X_max = X[:,1].max()+margin

#набор точе , чтобы нарисовать прямую
X_support = np.linspace(X_min, X_max, num=100)
#предсказание модели
Y_model = w[0][0] + w[1][0]*X_support

#настройка графика
plt.xlim(X_min, X_max)
plt.ylim(0, Y[:,0].max() + margin)
#Рисуем исходные точки
plt.scatter(X[:,1], Y[:,0], 40, 'g', 'o', alpha=0.8)
#предсказания модели
plt.plot(X_support, Y_model)
plt.show()