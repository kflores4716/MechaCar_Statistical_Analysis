# Load in dplyr library
library(dplyr)

MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)

# Use summary() function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))

# DELIVERABLE 2:

Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- Suspension_Coil %>% summarize(Mean_PSI = mean(PSI),
                                               Median_PSI = median(PSI),
                                               PSI_Variance = var(PSI),
                                               PSI_Stdev = sd(PSI),
                                               .groups = 'keep')
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI = mean(PSI),
                                                                             Median_PSI = median(PSI),
                                                                             PSI_Variance = var(PSI),
                                                                             PSI_Stdev = sd(PSI),
                                                                             .groups = 'keep')


?t.test()
t.test(Suspension_Coil$PSI, mu=1500)

?subset()
# Use subset() to create new data groups for each lot
Lot_1 <- subset(Suspension_Coil, Manufacturing_Lot == 'Lot1')
Lot_2 <- subset(Suspension_Coil, Manufacturing_Lot == 'Lot2')
Lot_3 <- subset(Suspension_Coil, Manufacturing_Lot == 'Lot3')

t.test(Lot_1$PSI, mu=1500)
t.test(Lot_2$PSI, mu=1500)
t.test(Lot_3$PSI, mu=1500)


