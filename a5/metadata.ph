# Total deaths by location
total_deaths_by_location = df_merged[location_columns].sum()

# Total deaths by age group
total_deaths_by_age_group = df_merged[age_group_columns].sum()

# Average deaths by location
average_deaths_by_location = df_merged[location_columns].mean()

# Average deaths by age group
average_deaths_by_age_group = df_merged[age_group_columns].mean()

total_deaths_by_location, total_deaths_by_age_group, average_deaths_by_location, average_deaths_by_age_group
