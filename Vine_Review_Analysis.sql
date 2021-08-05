-- Creating vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

CREATE view Filtered_vine AS (
SELECT * FROM vine_table
WHERE total_votes >= 20
	)
	
CREATE VIEW Filtered_vine2 AS(
SELECT * FROM Filtered_vine
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5
	)
	
CREATE VIEW Vine_Paid AS (
SELECT * FROM Filtered_vine2
WHERE vine ='Y')

CREATE VIEW Vine_Unpaid AS (
SELECT * FROM Filtered_vine2
WHERE vine ='N')



CREATE VIEW five_star_reviews AS (
	SELECT * FROM filtered_vine2
	WHERE star_rating = 5
	)
	
SELECT COUNT(*) AS total_reviews FROM filtered_vine2;

SELECT fv.vine AS vine_status, COUNT(*) AS count_total_reviews , COUNT(fsr.review_id) AS count_five_star_reviews ,
 COUNT(fsr.review_id)/COUNT(*)::float*100 as Percentage_of_five_star_reviews
FROM filtered_vine2 AS fv
FULL OUTER JOIN five_star_reviews AS fsr ON fv.review_id = fsr.review_id
GROUP BY fv.vine

-------------------------------------------------------------------------------------------------------------------------------------------------------------
--Additional Analysis
SELECT fv2.star_rating, (SELECT COUNT(review_id) FROM vine_paid
				WHERE star_rating = fv2.star_rating)/(SELECT COUNT(review_id) FROM vine_paid
													)::float*100 AS Paid_Reviewers,
				(SELECT COUNT(review_id) FROM vine_unpaid
				WHERE star_rating = fv2.star_rating)/(SELECT COUNT(review_id) FROM vine_unpaid
													)::float*100 AS UnPaid_Reviewers			  
FROM filtered_vine2 AS fv2
GROUP BY fv2.star_rating
ORDER BY star_rating

