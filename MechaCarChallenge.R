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
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Standard_Deviation=sd(PSI),Variance=var(PSI), .groups = 'keep') #create summary table
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Standard_Deviation=sd(PSI),Variance=var(PSI), .groups = 'keep') 


t.test(Suspension_Coil$PSI, mu=1500) #All Lots t-test
t.test(subset(Suspsion_Coil$PSI, Suspension_Coil$Manufacturing_Lot=="Lot1"), mu=1500) #Lot 1 t-test
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot=="Lot2"), mu=1500) #Lot 2 t-test
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot=="Lot3"), mu=1500) #Lot 3 t-test

