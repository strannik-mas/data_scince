import numpy as np
import pandas as pd

# загружаем данные
houses = pd.read_csv("houses.csv")
#houses.head(7)
# импортируем модуль, отвечающий за деревья решений
from sklearn.tree import DecisionTreeClassifier
from sklearn.tree import export_text

# выгружаем признаки и целевые значения в отдельные переменные
X = houses[["dim_1", "dim_2"]]
y = houses["level"]

# создаем классификатор
cl = DecisionTreeClassifier().fit(X, y)

print(export_text(cl))

# проведем классификацию
print(cl.predict(X[7:8])[0], y[7])