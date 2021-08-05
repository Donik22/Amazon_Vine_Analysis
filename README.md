# Amazon_Vine_Analysis
## Overview
The goal of this challenge is to determine whether there is any bias toward favourable reviews from reviewrs with paid and unpaid membership. we'll Be using data from amazon vine program. This programs allows Publishers and manufacturers to recive reviews for thier products and our analysis will be done on the reviewers.

## Result


![Total_reviwers](https://github.com/Donik22/Amazon_Vine_Analysis/blob/main/Resources/Total_reviews.PNG)

- After filtering the data for valid datapoints and helpfull reviews. There where A total of `65581` Reviwers in our filtered table.

![Paid VS Unpaid Reviews](https://github.com/Donik22/Amazon_Vine_Analysis/blob/main/Resources/Paid%20VS%20Unpaid%20Reviews.PNG)
- Non-Vine 5-star-reviews accounted for 30543 of the total reviews.
- Vine 5-star-reviews reviews were 222.
- 47 % of non-vine reviewers gave a rating of five stars.
- 36 % of vine reviewers gave a rating of five stars.

## Summary
This analysis alone indicates that there was no positivity bias for reviews in the vine program in fact the opposite might be argued. non-vine reviewrs showed a higher percentage of five star reviews. 


### Additional Analysis

![Additonal Analysis](https://github.com/Donik22/Amazon_Vine_Analysis/blob/main/Resources/Additional%20Analysis.PNG)

An extra analytic query was done using SQL to confirm our summary Instead Our initial Hypothesis could'nt be supported. 

The  Attributes are :

- Paid_viewers = Percentage of paid viewers that gave products the corrosponding star_rating
- Unpaid_viewers = Percentage of Unpaid viewers that gave products the corrosponding star_rating

We see Here that unpaid Reviewers are more likely to give an extreme review (1 or 5 ) While paid reviewers are very less likely to give a review that is less than 3. 

### In conclusion.

- Paid reviewers are more likely to give a good review (>3).
- Unpaid reviewrs are more likely to give an extreme review (1 or 5).
