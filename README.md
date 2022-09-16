# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![summary](/images/summary.png)

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

As the above screenshot can show highlighted in yellow, the vehicle_length and ground_clearance have a significant non-random amount of variance when compared to the mpg values.

* Is the slope of the linear model considered to be zero? Why or why not?

The slope of the linear model is NOT considered to be zero since the p-value (5.35e-11) is much smaller than the significance level (0.05), which can be seen above highlighted in green. 

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

We believe the model accurately predicts the mpg of MechaCar prototypes because the R-Squared value is 0.7149, as seen above highlighted in blue. 

## Summary Statistics on Suspension Coils

![summary](/images/total_summary.png)
![summary](/images/lot_summary.png)

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

When looking at the total_summary above, highlighted in yellow we can see that the variance for PSI on the entire dataset is 62.29356, which is below the 100psi threshold needed to pass specifications. However, when looking at the individual lots, lots 1 & 2 are within specifications (highlighted in green), but lot 3 has a variance of 170.2861224 which far exceeds the threshold needed to pass specifications (highlighted in red). 

## T-Tests on Suspension Coils

![summary](/images/total_ttest.png)

The T-Test conducted against the entire dataset finds a p-value of 0.06028, which meets the significance level.

![summary](/images/lot1_ttest.png)

The T-Test conducted against Lot1 finds a p-value of 1, which meets the significance level.

![summary](/images/lot2_ttest.png)

The T-Test conducted against Lot2 finds a p-value of 0.6072, which meets the significance level.

![summary](/images/lot3_ttest.png)

The T-Test conducted against Lot3 finds a p-value of 0.04168, which does **NOT** meets the significance level meaning there is a statistical anomaly in the data when compared to other lots. 

## Study Design: MechaCar vs Competition

When comparing MechaCar's mpg against its competition, one factor that is overlooked that is already included in our dataset is the weight of the vehicle. A larger SUV style vehicle is going to be heavier than a small sport coupe and the expectations of mpg is going to be very different, and it is unfair to compare a Prius against a Hummer when considering mpg. 

Using the following code: 
mechacar_data %>% ggplot(aes(x=vehicle_weight,y=mpg)) + geom_point() + geom_smooth(method=lm)

![plot](/images/mpg_weight_plot.png)

I have created a line chart with a trend line showing the vehicle weight vs the mpg. I was very disappointed to find that the data supplied to us appears to be randomly fabricated, so this inquiry is pointless to conduct further with the current data.

Instead, let's say that we want to compare a vehicle's horsepower vs its mpg. 

Null Hypothesis: "There is no statistical difference between MechaCar's horsepower and the horsepower of comparable vehicles by other manufacturers." 

Alternative Hypothesis: "There is a statistical difference between MechaCar's horsepower and the horsepower of comparable vehicles by other manufacturers."

We would then create a t-test to see if MechaCar's horsepower and mpg are statistically different from comparable models. 
We would have to gather the horsepower data from MechaCar as well as its competitors' comparable vehicles. 