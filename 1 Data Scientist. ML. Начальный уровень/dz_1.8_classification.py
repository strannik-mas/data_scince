### Тут нужно сделать импорты всех необходимых библиотек ###
import numpy as np
import pandas as pd

import matplotlib
import matplotlib.pyplot as plt

# импортируем модуль, отвечающий за деревья решений
from sklearn.tree import DecisionTreeClassifier
from sklearn.tree import export_text

### Здесь требуется загрузить датасет phones.csv ###
matplotlib.rc("font", size=18) # для увеличения шрифта подписей графиков

# загружаем данные
phones = pd.read_csv("phones.csv")

# Задание 2: обучить модель классификации
### Тут нужно выгрузить в соответствующие переменные выбранные признаки ###
X = phones[["disk", "year"]]
y = phones["os"]

### Здесь следует запустить процесс обучения ###
### и продемонстрировать работоспобность обученной модели ###

# создаем классификатор
cl = DecisionTreeClassifier().fit(X, y)

print(export_text(cl))

# проведем классификацию
print(cl.predict(X[7:8])[0], y[7])