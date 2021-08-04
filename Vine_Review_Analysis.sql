-- vine table
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

SELECT fv.vine, COUNT(*) , COUNT(fsr.review_id) ,
 COUNT(fsr.review_id)/COUNT(*)::float*100 as Percentage_of_five_star_reviews
FROM filtered_vine2 AS fv
FULL OUTER JOIN five_star_reviews AS fsr ON fv.review_id = fsr.review_id
GROUP BY fv.vine