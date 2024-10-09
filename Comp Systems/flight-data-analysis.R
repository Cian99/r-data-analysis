# load needed libraries
library(ggplot2)
library(readxl)
library(dplyr)

# read excel file
flight_data <- read_excel("./Other Programs and Files/R file/R projects/Comp Systems/flight_sample_data.xlsx")

# overview of the data
glimpse(flight_data)

# bar chart to show flights at each hour
ggplot(data = flight_data) + geom_bar(aes(x=HourOfDay)) + xlab("New York Airports") + ylab("Number of Flights")

# separate by airport
ggplot(data = flight_data) + geom_bar(aes(x=HourOfDay)) + facet_wrap(~origin) + xlab("New York Airports") + ylab("Number of Flights")

# each day of the month separated by airport
ggplot(data = flight_data) + geom_bar(aes(x=Day, fill=origin)) + xlab("Day of Month") + ylab("Number of Flights")

# scatter plot to show relationship between departure and arrival delay
ggplot(flight_data) + geom_point(aes(x=dep_delay, y=arr_delay), colour="blue") + xlab("Departure Delay") + ylab("Arrival Delay")

# scatter plot with red line to ref equal departure and arrival delays
ggplot(flight_data) + geom_point(aes(x=dep_delay, y=arr_delay), colour="blue") + geom_abline(intercept=-15, slope=1, colour="red") + xlab("Departure Delay") + ylab("Arrival Delay")
