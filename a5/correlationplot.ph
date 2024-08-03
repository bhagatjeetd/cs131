import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Paths to the CSV files
file_place = '/path/to/COVID19DeathsPlace.csv'
file_age = '/path/to/COVID19DeathsAge.csv'

# Read the CSV files
df_place = pd.read_csv(file_place)
df_age = pd.read_csv(file_age)

# Merge dataframes on the 'Date' column
df_merged = pd.merge(df_place, df_age, on='Date')

# Columns representing locations and age groups
location_columns = ['StSaviours', 'GeneralHospital', 'Community', 'CareHome', 'OverdaleHospital']
age_group_columns = ['_0to9', '_10to19', '_20to29', '_30to39', '_40to49', '_50to59', '_60to69', '_70to79', '_80to89', '_90andover']

# Calculate the correlation matrix between locations and age groups
correlation_matrix = df_merged[location_columns + age_group_columns].corr()
correlation_locations_ages = correlation_matrix.loc[location_columns, age_group_columns]

# Plotting the correlation heatmap with annotations
plt.figure(figsize=(14, 10))
sns.heatmap(correlation_locations_ages, annot=True, fmt=".2f", cmap='coolwarm', cbar_kws={'label': 'Correlation Coefficient'})
plt.title('Correlation Between Age Groups and Locations for COVID-19 Deaths')
plt.xlabel('Age Groups')
plt.ylabel('Locations')
plt.xticks(rotation=45)
plt.yticks(rotation=0)
plt.show()
