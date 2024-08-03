import pandas as pd
import matplotlib.pyplot as plt

file_place = '/path/to/COVID19DeathsPlace.csv'

df_place = pd.read_csv(file_place)

data = {
    'StSaviours': df_place['StSaviours'],
    'GeneralHospital': df_place['GeneralHospital'],
    'Community': df_place['Community'],
    'CareHome': df_place['CareHome'],
    'OverdaleHospital': df_place['OverdaleHospital']
}

plt.figure(figsize=(12, 8))
plt.boxplot(data.values(), labels=data.keys())
plt.title('Box Plot of COVID-19 Deaths by Location')
plt.ylabel('Number of Deaths')
plt.xlabel('Location')
plt.grid(True)
plt.show()
