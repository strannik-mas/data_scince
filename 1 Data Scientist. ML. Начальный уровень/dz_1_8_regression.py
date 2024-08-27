### Тут нужно сделать импорты всех необходимых библиотек ###
import numpy as np
import pandas as pd

import matplotlib
import matplotlib.pyplot as plt

### Здесь требуется загрузить датасет phones.csv ###
matplotlib.rc("font", size=18) # для увеличения шрифта подписей графиков

# загружаем данные
phones = pd.read_csv("phones.csv")

#Задание 1: обучить модель регрессии
# импортируем модуль, отвечающий за линейную регрессию
from sklearn.linear_model import LinearRegression

### Тут нужно выгрузить в соответствующие переменные выбранные признаки ###
# X = phones[["disk"]]
# y = phones["price"]

### Здесь следует запустить процесс обучения ###
### и продемонстрировать работоспобность обученной модели ###

# # создаем регрессор
# reg = LinearRegression().fit(X, y)
# [b] = reg.coef_
# a = reg.intercept_
#
# fig = plt.figure(figsize=(10, 10)) # создаем картинку
# ax = plt.axes()
#
# # создаем функцию для предсказания цены дома
# def reg_prediction(dim_1):
#     return a + b * dim_1
#
# # помещаем точки на график
# ax.scatter(phones["disk"], phones["price"], s=100)
# # помещаем предсказания
# ax.plot([X.disk.min(), X.disk.max()], [reg_prediction(X.disk.min()), reg_prediction(X.disk.max())], c="red")
#
# # отображаем картинку
# plt.show()

# выгружаем признаки и целевые значения в отдельные переменные
X = phones[["disk", "year"]]
y = phones["price"]

# создаем регрессор
reg = LinearRegression().fit(X, y)

# вытаскиваем нужные коэффициенты
[b1, b2] = reg.coef_
a = reg.intercept_

# создаем функцию для предсказания цены phone
def reg_prediction(disk, year):
    return a + b1 * disk + b2 * year

# сделаем предсказания для различных конфигураций домов
d1, d2 = list(), list()
for x in np.linspace(min(phones["disk"]), max(phones["disk"]), 100):
    for y in np.linspace(min(phones["year"]), max(phones["year"]), 100):
        d1.append(x)
        d2.append(y)
d1 = np.array(d1).reshape(-1, 1)
d2 = np.array(d2).reshape(-1, 1)
p = reg.predict(np.concatenate([d1, d2], axis=1))

fig = plt.figure(figsize=(20, 20)) # создаем картинку
ax = plt.axes(projection="3d") # устанавливаем проекцию

# помещаем точки на график
ax.scatter(phones["disk"], phones["year"], phones["price"], s=100)

# помещаем предсказанные значения на график
ax.plot_trisurf(d1.ravel(), d2.ravel(), p.ravel(), alpha=0.2)


# называем оси
ax.set_xlabel("disk")
ax.set_ylabel("year")
ax.set_zlabel("price")


# изменяем позицию камеры и отрисовываем картинку
ax.elev = 27
plt.show()

# Задание 3: обучить модель кластеризации
### Тут нужно выгрузить в соответствующие переменные выбранные признаки ###
#X = phones[["disk"]]

### Здесь следует запустить процесс обучения ###
### и продемонстрировать работоспобность обученной модели ###