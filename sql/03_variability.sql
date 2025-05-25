-- ========================================================
-- Measuring spread and variability in rental and payment data
-- ========================================================

-- 📊 Range of rental durations (min, max)
SELECT 
  MIN(rental_duration) AS min_days,
  MAX(rental_duration) AS max_days
FROM film;


-- 📊 Variance and standard deviation of film length
SELECT 
  ROUND(VAR_POP(length), 2) AS variance_length,
  ROUND(STDDEV_POP(length), 2) AS stddev_length
FROM film;


-- 📊 Compare rental_rate variability across ratings
SELECT 
  rating,
  ROUND(AVG(rental_rate), 2) AS avg_rate,
  ROUND(STDDEV_POP(rental_rate), 2) AS stddev_rate
FROM film
GROUP BY rating
ORDER BY stddev_rate DESC;


-- 📊 IQR approximation for rental durations using percentiles
SELECT
  PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY rental_duration) -
  PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY rental_duration) AS iqr_rental_duration
FROM film;


-- 📊 Coefficient of Variation (CV) = stddev / mean
-- Useful for comparing dispersion across different metrics
SELECT 
  ROUND(STDDEV_POP(length) / AVG(length), 2) AS cv_length,
  ROUND(STDDEV_POP(rental_rate) / AVG(rental_rate), 2) AS cv_rental_rate
FROM film;


-- 📊 Payment variability by staff member
SELECT 
  staff_id,
  COUNT(*) AS num_payments,
  ROUND(AVG(amount), 2) AS avg_payment,
  ROUND(STDDEV_POP(amount), 2) AS stddev_payment
FROM payment
GROUP BY staff_id
ORDER BY stddev_payment DESC;


-- 📊 Revenue range per customer
SELECT 
  customer_id,
  MIN(amount) AS min_paid,
  MAX(amount) AS max_paid,
  ROUND(STDDEV_POP(amount), 2) AS stddev_payment
FROM payment
GROUP BY customer_id
ORDER BY stddev_payment DESC
LIMIT 10;


-- 📊 Monthly payment variation over time
SELECT 
  DATE_TRUNC('month', payment_date) AS month,
  ROUND(AVG(amount), 2) AS avg_payment,
  ROUND(STDDEV_POP(amount), 2) AS stddev_payment
FROM payment
GROUP BY month
ORDER BY month;


-- 📊 Price variability by film category
SELECT 
  c.name AS category,
  ROUND(AVG(f.rental_rate), 2) AS avg_rate,
  ROUND(STDDEV_POP(f.rental_rate), 2) AS stddev_rate
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
GROUP BY category
ORDER BY stddev_rate DESC;


-- 📊 Z-score to identify unusually long/short films
SELECT 
  title,
  length,
  ROUND((length - AVG(length) OVER ()) / STDDEV_POP(length) OVER (), 2) AS z_score
FROM film
ORDER BY z_score DESC
LIMIT 10;


-- 📊 Variability in number of payments per customer
SELECT 
  ROUND(AVG(num_payments), 2) AS avg_num,
  ROUND(STDDEV_POP(num_payments), 2) AS stddev_num
FROM (
  SELECT customer_id, COUNT(*) AS num_payments
  FROM payment
  GROUP BY customer_id
) sub;
