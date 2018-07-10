
####Produced file for location stuff####

locations <- location_data_csv %>%
  read_csv

grades <- grade_lookup %>%
  read_csv

grade_data <- grade_data_csv %>%
  read_csv %>%
  left_join(grades)

advert_data <- cleaned_data_csv %>%
  read_csv