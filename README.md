# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![Deliverable 1 image](https://user-images.githubusercontent.com/94764735/161443205-9086e2fd-3969-4a06-984e-8f561b2fcc12.png)

#### Written Summary
- There are two variables that provide a non-random amount of variance to the dataset: `vehicle length` and `ground clearance`. Because their p-values are much less than our 0.05 significance level, we can conclude that these two variables are not random and DO have an impact on a vehicle's mpg. 
- In the image above, it is apparent that the p-value for the linear model is 5.35e-11, which again is much smaller than our assumed 0.05 significance level. This means that we should reject the null hypothesis and accept the alternative hypothesis, thus indicating that the results of the analysis aren't all non-random. Because the results aren't random, we can infer that the data follows some sort of trend, and therefore the slope of the linear model will NOT be zero.
- The R-squared value for this linear model is 0.7149, which means that the model will be able to approximate around 71.5% of the mpg data. As it is preferrable to have as high an R-squared value as possible so that the model explains most of the variability of the data, this model does predict the mpg of MechaCar prototypes pretty effectively. Perhaps we'd like to see a little bit higher R-squared value to show that the model is more accurate, but over 70% is still pretty good.


## Summary Statistics on Suspension Coils

Based on what we have learned from upper management, we know the following: "The design specifications for the MechaCar suspension coils dicate that the variance of the suspension coils must not exceed 100 pounds per square inch."

Thus, we have created two tables containing summary statistics for the MechaCar data, one listing the statistics for all data, the other splitting the data based on the manufacturing lot. The table containing all data tells us that our current manufacturing process does meet the design specifications that we are striving to meet. When analyzing all of our data in one large set, the variance of the suspension coils is only about 62.3; well below the threshold of 100 that we were striving to undercut. See an image of these summary statistics below:

![Total_Summary](https://user-images.githubusercontent.com/94764735/161831027-562f2af0-6028-462c-b547-a782f730015b.png)

However, when we split up our data and gather summary statistics for each lot, we see that there is one manufacturing lot in particular that is holding us back a bit. The variance for Lots 1 and 2 are only 0.98 and 7.47 respectively, both of which are much lower than the 62.3 variance we got from analyzing the entire data set. Lot 3, however, has a drastically higher variance of 170.29. This is obviously way higher than the threshold of 100 that we set as a standard. Clearly, Lot 3 is having some issues with consisency and causing our data as a whole to perhaps have a higher variance for suspension coils than it should. Here is an image of these summary statistics split by Manufacturing Lot:

![Lot_Summary](https://user-images.githubusercontent.com/94764735/161834417-df12d585-820d-4121-be7e-cb8762fdef66.png)

