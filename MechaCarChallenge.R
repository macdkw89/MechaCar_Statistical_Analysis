library(dplyr)
library(tidyverse)

mechacar_data <- read.csv("csv/MechaCar_mpg.csv", stringsAsFactors = FALSE, check.names = FALSE)

mechacar_lm <- lm(mpg ~ 
                 vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, 
               data = mechacar_data)

summary(mechacar_lm)

suspension_data <- read.csv("csv/Suspension_Coil.csv", stringsAsFactors = FALSE, check.names = FALSE)

total_summary <- suspension_data %>%
  summarize(
    Mean = mean(PSI), 
    Median = median(PSI), 
    Variance = var(PSI), 
    SD = sd(PSI)
    )

lot_summary <- suspension_data %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(
    Mean = mean(PSI),
    Median = median(PSI),
    Variance = var(PSI),
    SD = sd(PSI), 
    .groups = 'keep'
    )

t.test(suspension_data$PSI, mu = 1500)
t.test(subset(suspension_data, Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(suspension_data, Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(suspension_data, Manufacturing_Lot=="Lot3")$PSI, mu = 1500)


###### deliverable 4 example code below

mechacar_data %>% ggplot(aes(x=vehicle_weight,y=mpg)) + geom_point() + geom_smooth(method=lm)
