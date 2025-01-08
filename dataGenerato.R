library(dplyr)

#five species of animals randomly sampled into a vector
s <- c("Alouatta palliata", "Atelidae ateles", "Cebus albifrons", "Aotus zonalis", "Saimiri sciureus")
species <- sample(s, size = 100, replace = TRUE)
species

#creating vector from randomly sampled limb width distribution
w <- seq(2, 10, by= 0.5)
width <- sample(w, size = 100, replace = TRUE)
width

#creating vector from randomly sampled limb length distribution
l <- seq(12, 70, by= 2)
length <- sample(l, size = 100, replace = TRUE)
length

#observer vector random assignment of names
o <- c("Cam", "Mari", "Kyle")
observer <- sample(o, size = 100, replace = TRUE)
observer

#create data frame of variables
df <- data.frame(
  species_name = species,
  limb_width = width,
  limb_length = length,
  observer_name = observer
)

#create csv data set
write.csv(df, "measurements.csv", row.names = FALSE)

#viewing the data set to proofread for errors
data_from_csv <- read.csv("measurements.csv")
print(data_from_csv)
