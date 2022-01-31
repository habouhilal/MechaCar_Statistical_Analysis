# Deliverable 1: Linear Regression to Predict MPG

mechacar_table <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(mechacar_table)

lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechacar_table)
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechacar_table))

# Deliverable 2: Summary Statistics on Suspension Coils

suspensionCoil_table <- read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(suspensionCoil_table)

total_summary <- suspensionCoil_table %>% summarize(Mean=mean(PSI),Median= median(PSI), Variance= var(PSI),SD=sd(PSI) , .groups = 'keep')

lot_summary <- suspensionCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median= median(PSI), Variance= var(PSI),SD=sd(PSI) , .groups = 'keep')


# Deliverable 3: T-Test on Suspension Coils

t.test(suspensionCoil_table$PSI,mu=1500)

lot1<-subset(suspensionCoil_table, Manufacturing_Lot =="Lot1")
lot2<-subset(suspensionCoil_table, Manufacturing_Lot =="Lot2")
lot3<-subset(suspensionCoil_table, Manufacturing_Lot =="Lot3")
t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)
