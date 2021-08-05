# Amazon_Vine_Analysis
## Overview
The goal of this challenge is to determine whether there is any bias toward favorable reviews from reviewers with paid and unpaid membership. We'll Be using data from the amazon vine program. This program allows Publishers and manufacturers to receive reviews for their products. Our analysis will be done on the reviewers.

## Result


![Total_reviwers](https://github.com/Donik22/Amazon_Vine_Analysis/blob/main/Resources/Total_reviews.PNG)

- After filtering the data for valid data points and helpful reviews. There were A total of `65581` Reviewers in our filtered table.

![Paid VS Unpaid Reviews](https://github.com/Donik22/Amazon_Vine_Analysis/blob/main/Resources/Paid%20VS%20Unpaid%20Reviews.PNG)
- Non-Vine 5-star-reviews accounted for 30543 of the total reviews.
- Vine 5-star-reviews reviews were 222.
- 47 % of non-vine reviewers gave a rating of five stars.
- 36 % of vine reviewers gave a rating of five stars.

## Summary
This analysis alone indicates no positivity bias for reviews in the vine program. Non-vine reviewers showed a higher percentage of five-star reviews. 


### Additional Analysis

![Additonal Analysis](https://github.com/Donik22/Amazon_Vine_Analysis/blob/main/Resources/Additional%20Analysis.PNG)

An extra analytic query using SQL to confirm our summary, The result challenged it. 

The  Attributes are :

- Paid_viewers = Percentage of paid viewers that gave products the corresponding star_rating
- Unpaid_viewers = Percentage of Unpaid viewers that gave products the corresponding star_rating

We see Here that unpaid Reviewers are more likely to give an extreme review (1 or 5 ) While paid reviewers are less likely to give a review that is less than 3.

### In conclusion.

- There is no sufficient evidence to prove a positivity bias towards reviews from paid vine reviewers.
- Paid reviewers are more likely to give a good review (>3).
- Unpaid reviewers are more likely to give an extreme review (1 or 5).
