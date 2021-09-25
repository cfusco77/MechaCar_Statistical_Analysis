# install packages 
install.packages("splitstackshape")
install.packages("tidyverse")
install.packages("reshape2")
install.packages("devtools")
install.packages("plotly")
install.packages("crosstalk")
install.packages("DT")
install.packages("fivethirtyeight")
install.packages("jsonlite")
install.packages("readxl")
install.packages("dplyr")

#import dependencies 
library(tidyverse)
library(jsonlite)
library(dplyr)

 
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #import data 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar_mpg) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar_mpg)) #generate summary statistics

Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #read csv 