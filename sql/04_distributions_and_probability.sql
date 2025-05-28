-- ========================================================
-- Exploring frequency distributions, binning, and probability
-- ========================================================

-- Frequency of film ratings
SELECT 
  rating,
  COUNT(*) AS num_films
FROM film
GROUP BY rating
ORDER BY num_films DESC;


-- Histogram-style binning of film lengths (10-minute bins)
SELECT
  width_bucket(length, 0, 200, 10) AS bin,
  COUNT(*) AS films_in_bin
FROM film
GROUP BY bin
ORDER BY bin;


-- Custom bins: rental rate brackets
SELECT
  CASE 
    WHEN rental_rate < 1 THEN '< $1'
    WHEN rental_rate BETWEEN 1 AND 2 THEN '$1-2'
    WHEN rental_rate BETWEEN 2 AND 3 THEN '$2-3'
    ELSE '> $3'
  END AS rate_group,
  COUNT(*) AS num_films
FROM film
GROUP BY rate_group
ORDER BY rate_group;


-- Count films by release year
SELECT 
  release_year,
  COUNT(*) AS num_films
FROM film
GROUP BY release_year
ORDER BY release_year;


-- Distribution of payment amounts
SELECT 
  amount,
  COUNT(*) AS num_payments
FROM payment
GROUP BY amount
ORDER BY amount;


-- Cumulative distribution of payments
SELECT
  amount,
  COUNT(*) AS count,
  SUM(COUNT(*)) OVER (ORDER BY amount) AS cumulative_count
FROM payment
GROUP BY amount
ORDER BY amount;


-- Normalized frequency (proportion of total)
SELECT
  amount,
  ROUND(COUNT(*)::numeric / (SELECT COUNT(*) FROM payment), 4) AS proportion
FROM payment
GROUP BY amount
ORDER BY amount;


-- Probability of a film having length > 120 mins
SELECT 
  ROUND(COUNT(*) FILTER (WHERE length > 120) * 1.0 / COUNT(*), 3) AS prob_long_film
FROM film;


-- Conditional probability: film is rated 'R' AND > 120 mins
SELECT
  ROUND(COUNT(*) FILTER (WHERE rating = 'R' AND length > 120) * 1.0 /
        COUNT(*) FILTER (WHERE length > 120), 3) AS prob_R_given_long
FROM film;


-- Joint probability: R-rated and long film
SELECT
  ROUND(COUNT(*) FILTER (WHERE rating = 'R' AND length > 120) * 1.0 / COUNT(*), 3) AS prob_R_and_long
FROM film;


-- ========================================================
-- SECTION X: Business-Driven Probability Insights
-- ========================================================

-- Expected value of a payment amount (weighted average)
SELECT 
  SUM(amount * prob) AS expected_value
FROM (
  SELECT 
    amount,
    COUNT(*)::numeric / (SELECT COUNT(*) FROM payment) AS prob
  FROM payment
  GROUP BY amount
) AS dist;


-- Proportion of payments greater than $5
SELECT 
  ROUND(COUNT(*) FILTER (WHERE amount > 5) * 1.0 / COUNT(*), 3) AS prob_large_payment
FROM payment;


-- Payment frequency per day (Poisson-style input)
SELECT 
  DATE(payment_date) AS day,
  COUNT(*) AS num_payments
FROM payment
GROUP BY day
ORDER BY day;


-- Outlier detection: payments > 3 std dev from mean
WITH stats AS (
  SELECT AVG(amount) AS mean, STDDEV(amount) AS std FROM payment
)
SELECT * 
FROM payment, stats
WHERE ABS(amount - stats.mean) > 3 * stats.std;
