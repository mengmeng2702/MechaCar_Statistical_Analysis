library(dplyr)
dataframe <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#create multiple linear regression model and add summary function to get statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=dataframe))

summary(lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars)) #generate summary statistics

suspension_coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- suspension_coil_table %>% summarize(Mean =mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #create summary table 
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean =mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI))


t.test((suspension_coil_table$PSI),mu=1500) #compare all manufacturing lots versus population means

t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot1")$PSI,mu=1500) #compare lot1 versus population means
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot2")$PSI,mu=1500) #compare lot2 versus population means
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot3")$PSI,mu=1500) #compare lot3 versus population means

