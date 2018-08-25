
####Produced file for location stuff####

locations <- location_data_csv %>%
  read_csv

grades <- grade_lookup %>%
  read_csv

grade_data <- grade_data_csv %>%
  read_csv

advert_data <- cleaned_data_csv %>%
  read_csv %>%
    left_join(adverts_csv_name %>% 
                read_csv, 
              by = c("job_id" = "job_ref"))

####INTERNAL VS EXTERNAL####

internal_external_summary <- advert_data %>%
  right_join(grade_data, by = c("job_id")) %>%
  left_join(grades, by = c("grade.y" = "grade")) %>%
  select(job_id, grade.y, job_department, role_type, `Number of posts`, approach, order) %>%
  group_by(job_id) %>%
  filter(order == min(order)) %>%
  ungroup() %>%
  filter(!is.na(`Number of posts`),
         approach %in% c('External', "Across government")) %>%
  group_by(job_department, grade.y, role_type, approach) %>%
  summarise(advert_count = length(grade.y), post_count = sum(`Number of posts`)) %>%
  mutate(is_policy = grepl('Policy', role_type)) 

write_csv(internal_external_summary, internal_external_csv)

