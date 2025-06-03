import numpy as np
import pandas as pd

df = pd.read_csv('/content/covid_toy - covid_toy.csv')

df.head(2)

df = df.dropna()

from sklearn.preprocessing import LabelEncoder

lb = LabelEncoder()

df['gender'] = lb.fit_transform(df['gender'])
df['cough'] = lb.fit_transform(df['cough'])
df['city'] = lb.fit_transform(df['city'])
df['has_covid'] = lb.fit_transform(df['has_covid'])

df.head(2)

x = df.drop(columns=['has_covid'])
y = df['has_covid']

from sklearn.model_selection import train_test_split

x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.2, random_state=42)

from sklearn.neighbors import KNeighborsClassifier

knn = KNeighborsClassifier(n_neighbors=5)
knn.fit(x_train, y_train)

y_pred = knn.predict(x_test)

from sklearn.metrics import accuracy_score

accuracy_score(y_test, y_pred)

df.shape
