# MechaCar_Statistical_Analysis
Deliverable 1: Linear Regression to Predict MPG

Ho : The slope of the linear model is zero, or m = 0

Ha : The slope of the linear model is not zero, or m ≠ 0

Assumptions:
1. The input data is numerical and continuous.
2. The input data should follow a linear pattern.
3. There is variability in the independent x variable. This means that there must be more than one observation in the x-axis and they must be different values.
4. The residual error (the distance from each data point to the line) should be normally distributed.

The p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, vehicle length and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle length and ground clearance have a significant impact on MPG. 

The r-squared (r2) value is also known as the coefficient of determination and represents how well the regression model approximates real-world data points.
From our linear regression model, the r-squared value is 0.71, which means that roughly 71% of the variablilty of our dependent variable (MPG) is explained using this linear model.

Deliverable 2: Summary Statistics on Suspension Coils

Deliverable 3: T-Test on Suspension Coils

Deliverable 4: Design a Study Comparing the MechaCar to the Competition
