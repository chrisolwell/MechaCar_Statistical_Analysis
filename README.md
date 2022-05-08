# MechaCar_Statistical_Analysis
Using R and statistics to learn about vehicles
## Linear Regression to Predict MPG
To determine the impact of various vehicle characteristics on its miles per gallon, we used a multiple linear regression model run through R Studio. We input data points for each vehicle's weight, length, ground clearnace, spoiler angle, mpg and whether it is all wheel drive or two wheel drive. Our null hypothesis is that these variables have no impact on a vehicle's mileage

Our linear regression shows extremely low p-values for vehicle length and ground clearance, and relatively greater values for spoiler angle and AWD. The writer finds these results counterintuitive, as he'd would've expected  a vehicle's weight would have more impact on its mileage than its length, and that ground clearance would have a negligable impact at most. 

![Screen Shot 2022-04-14 at 5 19 01 PM](https://user-images.githubusercontent.com/4724180/163486172-72d5e525-f3e9-4a93-9cf2-9cb18212c14a.png)

Because the multiple regression has r-values near .70 and an extremely low p-value, we can conclude this combination of variables has a significant impact on mileage. However, because the intercept is so significant, there are likely improvements we could make to increase the predictive value of the model.

## Summary Statistics on Suspension Coils
![Screen Shot 2022-04-17 at 11 39 42 AM](https://user-images.githubusercontent.com/4724180/163724030-5b8074ae-a224-455b-ae02-6817ab5072d8.png)

Manufacturing lots of MechaCar suspension coils are not to have a variance of more than 100 PSI. As we see from the above summary table, there is much more variance in lot 3 than the other two lots, and lot 3's variance indicates that lot doesn't meet manufacturing standards.

## T-tests on Suspension Coils
A closer look at the results of our one-sample t-tests shows a p-value of .041 for lot 3, and lot 3 is unique for having a p-value that is below our significance level. Therefore we don't have evidence to reject our null hypothesis, and we must as a result conclude lot 3 is statistically more likely to contain products that do not meet manufacturing standards.

## Study Design: MechaCar vs. competition
To demonstrate how MechaCar performs against competition for owner satisfaction, for example, one could gather data from survey results measuring the satisfaction of owners of different vehicles. In such a study, a null hypothesis might say "MechaCar owners are more satisfied than competing vehicle owners," while the alt hypothesis would say "MechaCar owners are not more satisfied than owners of competing vehicles." A one sample t-test would tell us if MechaCar owners were more satisifed than vehicle owners overall, and while a two-sample t-test would allow us to determine if MechaCar owners are more satisfied than owners of a specific competing vehicle, provided that vehicle was represented in our survey population.
