library(dplyr)

measurements <- read.csv("measurements.csv")

measurements <- measurements %>% 
  mutate(Volume = pi * (limb_width / 2)^2 * limb_length)

write.csv(measurements, "measurements.csv", row.names = FALSE)

read.csv("measurements.csv")
