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


## T-Tests on Suspension Coils

Using our Suspension Coil data, we performed some t-tests to determine if all manufacturing lots (and each individual lot) are statistically different from the population mean of 1,500 pounds per square inch. The first t-test we performed was on the entire data set, yielding the following results:

![t test_All](https://user-images.githubusercontent.com/94764735/161840013-f7a7ca2f-13d2-4993-953e-0ad4c8491afa.png)

Here, we can see that the listed mean is 1498.78, which is slightly lower than the population mean that we were expecting. However, the p-value we got is 0.06 which is higher than the 0.05 significance level that we generally use. This means that we do not have sufficient evidence to reject our null hypothesis, and we accept that the PSI data across all manufacturing lots is not statistically different from the population mean of 1,500 pounds per square inch.

Next, we filtered our `Suspension_Coil` data into three additional data sets, one for each Manufacturing Lot. We ran a t-test for the Lot 1 data and came to a similar conclusion as our first t-test:

![t test_Lot1](https://user-images.githubusercontent.com/94764735/161841508-55ccdc9a-38dc-48d0-baf4-f80dfdb4b364.png)

The resulting mean for Lot 1 actually did come out to exactly 1500, which tells us that the PSI data for Lot 1 is not statistically different from the population mean of 1,500 PSI. Just to be sure, we can look at the p-value, which is 1 for the Lot 1 data. 1 is certainly bigger than our 0.05 significance level, thus we can confirm that we must accept the null hypothesis and conclude (again) that there is no significant statistical difference between Lot 1 PSI mean and the PSI population mean.

After running the Lot 2 t-test, we got similar results as those we got for Lot 1:

![t test_Lot2](https://user-images.githubusercontent.com/94764735/161842285-2a22da46-99b0-4015-912c-28d3b2c94e7d.png)

The mean is slightly higher at 1500.2, but the difference is not much. The p value did change a bit more than the mean did, as it dropped down to 0.61, however, this is still well above the 0.05 significance level. So, from these results we can draw the same conclusion as we did with Lot 1: there is no significant statistical difference between Lot 2 PSI mean and the PSI population mean.

Moving on to Lot 3, we gathered some different results from our t-test than we did for the previous two lots. The resulting mean for Lot 3 was 1496.14, which is pretty close to our 1500 population mean, but much father off than the other two lots. Looking at the p value of 0.042, we see that for this lot we do have sufficient evidence to reject our null hypothesis. This p value IS lower than our 0.05 significance level, thus meaning that we do have enough evidenve to reject the null hypothesis. Therefore, we can say (for Lot 3) that it IS statistically different from our population mean of 1500 PSI.

This is the second time now that Lot 3 has had different results from the other two lots. Clearly, there is something going on with Lot 3 that is causing these results.

## Study Design: MechaCar vs Competition

When it comes to selling a new vehicle, it is very important to do some research into how it might compare with other, similar vehicles that are already available. Our MechaCar is still just a prototype, but we are getting close to being ready to start selling to the public. So, before we do so, we would like to run some further analyses to determine if we are pricing our MechaCar reasonably compared to the competition. In order to do so, we will need to collect data for the compeition so that we can determine how their pricing compares to the quality of their vehicles. For this analysis, we will search for the following data:

- Engine Type (gas, diesel, hybrid, electric)
- Fuel Efficiency
- Safety Rating
- Reliability
- Price (new selling price, not used selling price)

Once we scour the internet and find data for each category listed above, we will use those categories as our metrics to be tested in our analysis. Before running the data through `RScript`, we chose the following Null and Alternative Hypotheses:

- Null Hypothesis: These metrics have a significant impact on a car's selling price, and based on these metrics we are pricing our MechaCar correctly according to its performance as compared to the competition.
- Alternative Hypothesis: These metrics do not have enough of an impact on a car's selling price, and therefore we cannot determine whether we are pricing our MechaCar appropriately or not.

The analysis we will perform is a multiple linear regression, using Price as our dependent variable. We will use a multiple linear regression model because it will  tell us which of our metrics have a significant impact on selling price. Once we determine which metrics impact selling price the most, we can filter out the competitor's vehicles that share those same metrics with our MechaCar. Finally, we can sort through the listed selling prices of those similar vehicles and use those prices to decide on a final selling price of our own. 



