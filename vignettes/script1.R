# This scripts reads data from efm "Experimental Forest Management" plots

# load packages
library(dplyr)
library(ggplot2)
library(tidyr)
library(stringr)

# Stand level data (per plot, year and species)
# All the plots in this dataset are unmanaged.
EFM_stand <- readRDS("/Users/lmarques/workshop2/data/efm/EFM_stand_data.RDS") # 18 plots
str(EFM_stand)
length(unique(EFM_stand$FNUM))

# Plotting tree density per year
plot1 <- ggplot() +
  geom_point(data=EFM_stand, aes(x=AJ, y=TreesPerHectareAHC1_2),se=F,col="blue",size=.5)

# Plotting mean dbh per year
plot2 <- ggplot() +
  geom_point(data=EFM_stand, aes(x=AJ, y=DBHqAHC1_2_cm),se=F,col="red",size=.5)
