import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("titanic.csv")
print(df.query('Survived == 1').count().iloc[1])
print(df.query('Survived == 0').count().iloc[1])
d = {}
for index in range(len(df)):
    if (d.__contains__(df["Pclass"].iloc[index])):
        d[df["Pclass"].iloc[index]] += 1
    else:
        d[df["Pclass"].iloc[index]] = 1
print(d)

df["Pclass"] = df["Pclass"].replace(1, "Элита")
df["Pclass"] = df["Pclass"].replace(2, "Средний_класс")
df["Pclass"] = df["Pclass"].replace(3, "Работяги")
print(df)
max_elem = -1
for index in range(len(df)):
    if(max_elem < df["Fare"].iloc[index]):
        max_elem = df["Fare"].iloc[index]
print(max_elem)
max_elem *= 0.25
for index in range(len(df)):
    if(df["Fare"].iloc[index] <= max_elem):
        df['Ticket price'] = "Дешевый"
    else:
        df['Ticket price'] = "Дорогой"
print(df)

df.query('Survived == 1')["Pclass"].value_counts().plot(kind = "pie", figsize=(7,7), fontsize=20)
plt.figure()
df.query('Survived == 0')["Pclass"].value_counts().plot(kind = "pie", figsize=(7,7), fontsize=20)
plt.show()
