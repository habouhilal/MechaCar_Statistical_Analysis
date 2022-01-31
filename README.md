# MechaCar_Statistical_Analysis

## Overview
The purpose of this project is to design a study that will compare the MechaCar to the Competition. AutosRUs newest prototype of the MechaCar, is suffering from production troubles that are blocking the manufacturing team's progress. So, this analysis will review the production data for insights that may help the manufacturing team. This process is conducted using R and its strong statistical functions. 

## Results[^note]
### Linear Regression to Predict MPG 

the first test is to perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

<img width="812" alt="Ln summary" src="https://user-images.githubusercontent.com/91625564/151737787-5f54fb61-8292-47a8-860d-72b634048245.png">


#### 1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The linear regression model for our dataset shows that the Vehicle length and Ground Clearance were the only variables with a p-value of less than 0.05. AS results they provide non-random amount of variance to the MPG as these were the only variables with a p-value of less than 0.05.

#### 2.Is the slope of the linear model considered to be zero? Why or why not?

The slope of the linear model is not zero. The test demonstrate that the the p-value is less than 0.05 the model is 5.35e-11. This indicate that a correlation does exist between the variables (mainly Vehicle Length and Ground Clearance) and MPG. As results we can reject the null hypothesis.

#### 3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The r-squared value for this linear model is 0.715. Witch predicts approximately 71% of mpg. This linear model does a predict the mpg of MechaCar prototypes effectively

### Summary Statistics on Suspension Coils
This step is to collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

#### 1. Total_summary 

<img width="501" alt="Total summary" src="https://user-images.githubusercontent.com/91625564/151737540-3f586415-afa9-4012-806d-f8952cb538d9.png">

#### 2. Lot_summary dataframes,

<img width="681" alt="Lot summary" src="https://user-images.githubusercontent.com/91625564/151737561-018da563-958c-45ce-b60b-853056c29927.png">


The Variance for the entire dataset shows that the MechaCar suspension coils design does meet the specifications. The variance was around 62.3 Pounds. However, when conducting a Summary on each Lot separately, Lot 3 shows that the variance exceed the specifications by 70 pounds.

### T-Tests on Suspension Coils
The T test results reveals that the p value for all the lots is 0.06028. There is no sufficient evidence to reject the null hypothesis. This will conclude that the suspension coils dataset statistically represents the population mean.
<img width="812" alt="T-test Data" src="https://user-images.githubusercontent.com/91625564/151737586-deadcb19-dbee-42a2-8466-188b03781dcf.png">


#### 1. T-test on Lot 1 
The t-test on Lot 1 has a p-value of 1, fail to reject the null hypothesis. The test shows that 95% of the coils will have a PSI of 1500 +/- 0.281.

<img width="812" alt="T-test L1" src="https://user-images.githubusercontent.com/91625564/151737596-9a99a29f-deed-4bd6-b0e4-e35481c49bc2.png">

#### 2. T-test on Lot 2
The t-test on Lot 2 has a p-value of 0.6072, same as the first lot fail to reject the null hypothesis. The test shows that 95% of the coils will have a PSI of 1500 +/- 0.977.

<img width="812" alt="T-test L2" src="https://user-images.githubusercontent.com/91625564/151737609-23455489-ba6e-4f75-9daa-f2769608958e.png">

#### 3. T-test on Lot 3
The t-test on Lot 3 has a p-value of 0.04168, we reject the null hypothesis.

<img width="812" alt="T-test L3" src="https://user-images.githubusercontent.com/91625564/151737644-f92df1f8-3d2e-4cea-8317-e357b0314595.png">

## Study Design: MechaCar vs Competition[^note]

### 1. What metric or metrics are you going to test?

Another statistical study that can quantify how the MechaCar performs against the competition is how the safety rating impact the price. 
We can also include the maintenance cost to help customers decide what is the safest car with a lower maintenance cost and price.  

### 2. What is the null hypothesis or alternative hypothesis?

Null Hypothesis: there is no correlation between price, safety rating and price.
Alternative hypothesis: MechaCar is not the most cost-effective car based on safety rating and maintenance cost compared to vehicles from other manufacturers

### 3. What statistical test would you use to test the hypothesis? And why?

There are many ways to test this hypothesis. We can run a simple linear regression model, as the model would attempt to predict car’s price (the dependent variable) based on the independent safety rating value and maintenance cost. 

### 4. What data is needed to run the statistical test?
In order to run this test, we need price, safety rating an maintenance cost data for multiple vehicle classes, types, and manufacturers.


