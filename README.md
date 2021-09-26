# MechaCar_Statistical_Analysis
## Overview 
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team.

## Linear Regression to Predict MPG
First we will perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

Ho : The slope of the linear model is zero, or m = 0

Ha : The slope of the linear model is not zero, or m ≠ 0

Assumptions:
1. The input data is numerical and continuous.
2. The input data should follow a linear pattern.
3. There is variability in the independent x variable. This means that there must be more than one observation in the x-axis and they must be different values.
4. The residual error (the distance from each data point to the line) should be normally distributed.

![Linear_Regression](https://github.com/cfusco77/MechaCar_Statistical_Analysis/blob/main/Resources/Linear_Regression.png) 

![Summary](https://github.com/cfusco77/MechaCar_Statistical_Analysis/blob/main/Resources/Summary.png) 

The p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, vehicle length and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle length and ground clearance have a significant impact on MPG. 

The r-squared (r2) value is also known as the coefficient of determination and represents how well the regression model approximates real-world data points.
From our linear regression model, the r-squared value is 0.71, which means that roughly 71% of the variablilty of our dependent variable (MPG) is explained using this linear model. While this linear regression does a fairly good job of predicting mpg of MechaCar prototypes we may consider introducing additional variables to refine our model further. 

## Summary Statistics on Suspension Coils
In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Based on the total_summary statistics, MechaCart is in compliance with suspension coil manufactoring guidlines. The overall variance is 62.3, far below 100. However, when we look at the manufactoring statistics by Lot, we see Lot 3 is responsible for most of the variance in the overall summary. Lot 3 is sitting above regulation with a variance of 170. MechaCar should investigate the manufactoring practices of Lot 3 to see if they can identify why this lot is performing so differently from Lots 1 & 2. 

![Total_Summary](https://github.com/cfusco77/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png) 
![Lots_summary](https://github.com/cfusco77/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png) 

## T-Tests on Suspension Coils
Next we performed  t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

Ho : There is no statistical difference between the observed sample mean and its presumed population mean.
Ha : There is a statistical difference between the observed sample mean and its presumed population mean.

Assumptions:
1. The input data is numerical and continuous. This is because we are testing the distribution of two datasets.
2. The sample data was selected randomly from its population data.
3. The input data is considered to be normally distributed.
4. The sample size is reasonably large. Generally speaking, this means that the sample data distribution should be similar to its population data distribution.
5. The variance of the input data should be very similar.

The t-test for all manufactoring lots combined resulted in a p-value of .06. Assuming our significance level was the common 0.05 percent, our p-value is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the sample mean is not statistically different from its presumed population mean. 

When we perform t-tests by lot we reach the same conclusion for Lots 1 and 2 with p-values of 1 and .6, respectively. However Lot 3's t-test resulted in a p-value of .04, below our significance3 level. Therefore we are unable to reject the null hypothesis and conclude that the mean of Lot 3 is statistically different from the population mean. 

![OverallTTest](https://github.com/cfusco77/MechaCar_Statistical_Analysis/blob/main/Resources/Overall_TTest.png)
![Lots123_TTests](https://github.com/cfusco77/MechaCar_Statistical_Analysis/blob/main/Resources/Lots1%2C2%2C3_TTests.png)

## Study Design: MechaCar vs Competition
Before purchasing a vehicle, consumers may be interested to compare the distrubution of safety ratings for MechaCar vs their primary compeititor. 

One common form of categorical data is frequency data, where we record how often something was observed within a single variable. For the design of this test we will be creating a contigency table displaying the frequency of safety ratings for both MechaCar and our chosen compeitior. 

The chi-squared test is used to compare the distribution of frequencies across two groups and tests the following hypotheses:

H0 : There is no difference in frequency distribution between both groups.

Ha : There is a difference in frequency distribution between both groups

Before we can perform our chi-squared analysis, we must ensure that our dataset meets the assumptions of the statistical test:
1. Each subject within a group contributes to only one frequency. In other words, the sum of all frequencies equals the total number of subjects in a dataset.
2. Each unique value has an equal probability of being observed.
3. There is a minimum of five observed instances for every unique value for a 2x2 chi-squared table.
4. For a larger chi-squared table, there is at least one observation for every unique value and at least 80% of all unique values have five or more observations.

Running rhe chi-squared test will result in a p-value that may or may not allow us to reject the null hypothesis. If we were to uncover that their is a statitsitically signifcant frequency distrubution betwen both groups I may reccomend expanding this analysis to control for vehicle type. Some vehicle types might be more hazardous than others and be skewing our results. 