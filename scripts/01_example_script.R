##########################################################
# Example Script
# author: Ignacio Sarmiento-Barbieri
##########################################################


#Separate each section with labels
# Clean the workspace -----------------------------------------------------
rm(list=ls())
cat("\014")
local({r <- getOption("repos"); r["CRAN"] <- "http://cran.r-project.org"; options(repos=r)}) #set repo



# Load Packages -----------------------------------------------------------
pkg<-list("tidyverse","here")
lapply(pkg, require, character.only=T)
rm(pkg)



# Load data ---------------------------------------------------------------
# I recomend you using the package here
dta<-read.table(here("stores","US90.txt"), sep="", header=TRUE)


# plot data ---------------------------------------------------------------

ggplot(dta) +
	geom_line(aes(x=gdpgr,y=gdpcapgr))

# estadisticas descriptivas  ---------------------------------------------------------------

stargazer::stargazer(dta)

