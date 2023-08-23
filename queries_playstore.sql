-- Comments in SQL Start with dash-dash --
-- query 1
SELECT * FROM analytics WHERE id = 1880;
-- query 2
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';
-- query 3
SELECT category, COUNT(*) FROM analytics GROUP BY category;
-- query 4
SELECT app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;
-- query 5
SELECT app_name, reviews, rating FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;
-- query 6
SELECT category, AVG(rating) AS avg_rating FROM analytics GROUP BY category ORDER BY avg_rating DESC;
-- query 7
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;
-- query 8
SELECT app_name, min_installs, rating FROM analytics WHERE min_installs <= 50 AND rating > 0 ORDER BY rating DESC;
-- query 9
SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;
-- query 10
SELECT app_name, price, reviews FROM analytics WHERE price BETWEEN 0.10 AND 1.00 ORDER BY reviews DESC LIMIT 10;
-- query 11
SELECT app_name, last_updated FROM analytics ORDER BY last_updated LIMIT 1;
-- query 12
SELECT app_name, price FROM analytics ORDER BY price DESC LIMIT 1;
-- query 13
SELECT SUM(reviews) FROM analytics;
-- query 14
SELECT category, COUNT(*) FROM analytics GROUP BY category HAVING COUNT(*) > 300;
-- query 15
SELECT app_name, reviews, min_installs, min_installs/reviews as ratio FROM analytics WHERE min_installs > 100000 ORDER BY ratio DESC LIMIT 1;