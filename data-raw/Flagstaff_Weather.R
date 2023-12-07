library(tidyverse)

# Read in the data.  Do some cleaning/verification
Flagstaff_Weather <- read.csv('data-raw/Pulliam_Airport_Weather_Station.csv') %>%
select('DATE', 'PRCP', 'SNOW', 'TMAX', 'TMIN') %>%
  drop_na() %>% mutate(RAIN = PRCP) %>% select(-PRCP)


# Save the data frame to the data/ directory as .rda
usethis::use_data(Flagstaff_Weather, overwrite = TRUE)
