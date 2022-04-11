MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
Sus_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(MechaCar)
head(Sus_coil)
library(dplyr)


lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MechaCar) #create linear regression
mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MechaCar) #summary stats for linear regression
summary(mpg_lm)


head(Sus_coil)
total_summary <- Sus_coil %>% summarize(mean=mean(PSI), median=median(PSI), variance=var(PSI), sd=sd(PSI)) 

lot_summary <- Sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI), median=median(PSI), variance=var(PSI), SD=sd(PSI), .groups='keep') #group by lot and summarize

Sus_coil_sample <- Sus_coil %>%  sample_n(50)
t.test(Sus_coil$PSI, mu=1500)

t.test(subset(Sus_coil, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
t.test(subset(Sus_coil, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
t.test(subset(Sus_coil, Manufacturing_Lot == "Lot3")$PSI, mu=1500)

