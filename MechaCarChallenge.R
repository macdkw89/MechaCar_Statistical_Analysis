library(dplyr)
library(tidyverse)

mechacar_data <- read.csv("csv/MechaCar_mpg.csv", stringsAsFactors = FALSE, check.names = FALSE)

mechacar_lm <- lm(mpg ~ 
                 vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, 
               data = mechacar_data)

summary(mechacar_lm)
