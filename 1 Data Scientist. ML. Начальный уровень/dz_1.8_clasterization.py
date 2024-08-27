### Тут нужно сделать импорты всех необходимых библиотек ###
import pandas as pd

import matplotlib
import matplotlib.pyplot as plt

### Здесь требуется загрузить датасет phones.csv ###
matplotlib.rc("font", size=18) # для увеличения шрифта подписей графиков

# загружаем данные
phones = pd.read_csv("phones.csv")

# fig = plt.figure(figsize=(10, 10)) # создаем картинку
#
# markers = {"Android": "o", "iOS": "v"}
# for d1, d2, l in zip(phones.disk, phones.price, phones.os):
#     plt.scatter(d1, d2, s=250, marker=markers[l])
#
# # отображаем картинку
# plt.show()

# импортируем модуль, отвечающий за кластеризацию
from sklearn.cluster import KMeans

# выгружаем признаки в отдельную переменную
X = phones[["disk", "price"]]

# создаем модель для кластеризации
clust = KMeans(n_clusters=3).fit(X)

# смотрим центры кластеров
[c1, c2, c3] = clust.cluster_centers_
# temp = clust.cluster_centers_

fig = plt.figure(figsize=(10, 10))  # создаем картинку

markers = {"Android": "o", "iOS": "v"}
for d1, d2, l in zip(phones.disk, phones.price, phones.os):
    plt.scatter(d1, d2, s=250, marker=markers[l])

# добавляем информацию о центрах кластеров
plt.scatter(c1[0], c1[1], s=250, marker="x", c="black")
plt.scatter(c1[0], c1[1], s=250 * 1e2, c="black", alpha=0.1)

plt.scatter(c2[0], c2[1], s=250, marker="x", c="black")
plt.scatter(c2[0], c2[1], s=250 * 1e2, c="black", alpha=0.1)

plt.scatter(c3[0], c3[1], s=250, marker="x", c="black")
plt.scatter(c3[0], c3[1], s=250 * 3.5e2, c="black", alpha=0.1)

# отображаем картинку
plt.show()