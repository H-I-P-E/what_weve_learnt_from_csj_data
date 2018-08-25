library(readr)
library(dplyr)
library(tidyr)

lookups_folder <- 'lookups'
data_folder <- 'data'
doc_folder <- 'doc'
figs_folder <- 'figs'
cooked_data <- 'cooked_data'

#source files
competencies_file <- file.path(lookups_folder, 'competencies.csv')
grade_lookup <- file.path(lookups_folder, 'grade_lookup.csv')
competency_data_file <- file.path(data_folder, 'competency_data.csv')
cleaned_data_csv <- file.path(data_folder, 'cleaned_advert_data.csv')
role_data_csv <- file.path(data_folder, 'role_data.csv')
grade_data_csv <- file.path(data_folder, 'grade_data.csv')
salary_data_csv <- file.path(data_folder, 'salary_data.csv')
location_data_csv <- file.path(data_folder, 'locations_data.csv')
adverts_csv_name <- file.path(data_folder, 'all_full_advert_data.csv')

#cooked data file
internal_external_csv <- file.path(cooked_data, 'internal_external.csv')


source("R\\data_munging.R")
