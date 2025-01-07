library(dplyr)

#five species of animals randomly sampled into a vector
s <- c("Giraffa camelopardalis", "Equus quagga", "Eudoracas thomsonii", "Phacochoerus africanus", "Loxodonta africana")
species <- sample(s, size = 100, replace = TRUE)
species

#creating vector from randomly sampled limb width distribution
w <- seq(5, 50, by= 1)
width <- sample(w, size = 100, replace = TRUE)
width

#creating vector from randomly sampled limb length distribution
l <- seq(50, 200, by= 5)
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
