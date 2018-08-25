####Internal External####

grades <- grade_lookup %>%
  read_csv

internal_external_summary <- internal_external_csv %>%
  read_csv 

internal_external_by_grade_data <- internal_external_summary %>%
  group_by(approach, grade.y) %>%
  summarise(advert_count = sum(advert_count)) %>%
  spread(approach, advert_count) %>%

internal_external_by_grade_graph <-