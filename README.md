# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![Deliverable 1 image](https://user-images.githubusercontent.com/94764735/161443205-9086e2fd-3969-4a06-984e-8f561b2fcc12.png)

#### Written Summary
- There are two variables that provide a non-random amount of variance to the dataset: `vehicle length` and `ground clearance`. Because their p-values are much less than our 0.05 significance level, we can conclude that these two variables are not random and DO have an impact on a vehicle's mpg. 
- In the image above, it is apparent that the p-value for the linear model is 5.35e-11, which again is much smaller than our assumed 0.05 significance level. This means that we should reject the null hypothesis and accept the alternative hypothesis, thus indicating that the results of the analysis aren't all non-random. Because the results aren't random, we can infer that the data follows some sort of trend, and therefore the slope of the linear model will NOT be zero.
- The R-squared value for this linear model is 0.7149, which means that the model will be able to approximate around 71.5% of the mpg data. As it is preferrable to have as high an R-squared value as possible so that the model explains most of the variability of the data, this model does predict the mpg of MechaCar prototypes pretty effectively. Perhaps we'd like to see a little bit higher R-squared value to show that the model is more accurate, but over 70% is still pretty good.

