
# Load the Required Packages ----------------------------------------------

library("chirps")
library("terra")
library(writexl)
library(tidyverse)

# Case 1: return as a data.frame
# Dates to Retrieve the data from

# Rainfall Data
dates <- c("2020-01-01","2022-12-31")

lonlat <- data.frame(lon = c(7.01656), lat = c(4.517005))

# The get_chirps function retrieve all the rainfall data but the documentation specified that the data is available from 1983 to 2016
RF <- get_chirps(lonlat, dates, server = "ClimateSERV")

# The get_chirts function retreive the temperature(max and min), and relative humidity data

# Temperature and Relative Humidity
dates <- c("2010-01-01","2016-12-31")

Tmax <- get_chirts(lonlat, dates,var = 'Tmax',server = "ClimateSERV")
Tmin <- get_chirts(lonlat, dates, server = "ClimateSERV",var = 'Tmin')
RHum <- get_chirts(lonlat, dates, server = "ClimateSERV",var = 'RHum')

