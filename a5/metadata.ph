import pandas as pd 
import seaborn as sns

# Calculate statistical summaries for both location and age group variables
location_stats = df_merged[location_columns].describe().T
age_group_stats = df_merged[age_group_columns].describe().T

# Additional statistics: sum and standard deviation
location_stats['sum'] = df_merged[location_columns].sum()
location_stats['std'] = df_merged[location_columns].std()
age_group_stats['sum'] = df_merged[age_group_columns].sum()
age_group_stats['std'] = df_merged[age_group_columns].std()

location_stats, age_group_stats

