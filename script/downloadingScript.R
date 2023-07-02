
# Load the Required Packages ----------------------------------------------

library("chirps")
library("terra")

# Case 1: return as a data.frame
# Dates to Retrieve the data from
dates <- c("2020-01-01","2022-12-31")

lonlat <- data.frame(lon = c(7.01656), lat = c(4.517005))

# The get_chirps function retrieve all the rainfall data
r1 <- get_chirps(lonlat, dates, server = "ClimateSERV")

# The get_chirts function retreive the temperature(max and min), and relative humidity data

get_chirts(lonlat, dates, server = "ClimateSERV")

