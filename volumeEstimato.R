library(dplyr)

measurements <- read.csv("measurements.csv")

measurements <- measurements %>% 
  mutate(Volume = pi * (limb_width / 2)^2 * limb_length)

write.csv(measurements, "measurements.csv", row.names = FALSE)

read.csv("measurements.csv")

#viewing the data set to proofread for errors
data_from_csv_addvol <- read.csv("measurements.csv")
print(data_from_csv_addvol)
