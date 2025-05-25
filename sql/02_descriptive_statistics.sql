-- ========================================================
-- 02_descriptive_statistics.sql
-- Exploring measures of central tendency using SQL
-- ========================================================

-- 📌 Mean (average) rental duration from the film table
SELECT 
  ROUND(AVG(rental_duration), 2) AS avg_rental_duration
FROM film;


-- 📌 Median rental duration (simulate with percentile_cont in PostgreSQL)
SELECT 
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY rental_duration) AS median_rental_duration
FROM film;


-- 📌 Mode: Most frequent rental duration
SELECT rental_duration, COUNT(*) AS count
FROM film
GROUP BY rental_duration
ORDER BY count DESC
LIMIT 1;


-- 📌 Count, Min, Max of film length (descriptive range)
SELECT 
  COUNT(*) AS num_films,
  MIN(length) AS shortest_film,
  MAX(length) AS longest_film
FROM film;


-- 📌 Grouped averages by rating (mean per group)
SELECT 
  rating,
  ROUND(AVG(length), 1) AS avg_length,
  ROUND(AVG(rental_rate), 2) AS avg_rental_rate
FROM film
GROUP BY rating
ORDER BY rating;


-- 📌 Summarize payment totals per customer
SELECT 
  customer_id,
  ROUND(SUM(amount), 2) AS total_paid,
  ROUND(AVG(amount), 2) AS avg_payment,
  COUNT(*) AS payment_count
FROM payment
GROUP BY customer_id
ORDER BY total_paid DESC
LIMIT 10;
