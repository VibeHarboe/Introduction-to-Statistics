-- ========================================================
-- Exploring measures of central tendency and variability in SQL
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


-- 📌 Standard deviation of rental rates
SELECT 
  ROUND(STDDEV_POP(rental_rate), 2) AS std_rental_rate
FROM film;


-- 📌 Grouped descriptives for film lengths by rating
SELECT 
  rating,
  COUNT(*) AS num_films,
  ROUND(MIN(length), 1) AS min_length,
  ROUND(MAX(length), 1) AS max_length,
  ROUND(AVG(length), 1) AS avg_length
FROM film
GROUP BY rating
ORDER BY avg_length DESC;


-- 📌 Share of total revenue per customer
SELECT 
  customer_id,
  ROUND(SUM(amount), 2) AS total_paid,
  ROUND(100.0 * SUM(amount) / (SELECT SUM(amount) FROM payment), 2) AS pct_of_total
FROM payment
GROUP BY customer_id
ORDER BY pct_of_total DESC
LIMIT 10;


-- 📌 Percentile distribution of rental durations (25th, 50th, 75th)
SELECT
  PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY rental_duration) AS p25,
  PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY rental_duration) AS p50,
  PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY rental_duration) AS p75
FROM film;
