-- 📘 SQL Script: Sampling and Estimation
-- Based on concepts from DataCamp's "Introduction to Statistics"

-- =====================================================
-- SECTION 1: Sample a subset from a table
-- =====================================================

-- Simulate a sample of 50 customers (assuming 1000+ exist)
SELECT *
FROM customer
ORDER BY RANDOM()
LIMIT 50;


-- =====================================================
-- SECTION 2: Compare sample mean to population mean
-- Example: Compare average rental rate between sample and population
-- =====================================================

-- Population mean rental rate
SELECT ROUND(AVG(rental_rate), 2) AS pop_avg_rental
FROM film;

-- Sample mean rental rate (random 50 films)
SELECT ROUND(AVG(rental_rate), 2) AS sample_avg_rental
FROM (
  SELECT rental_rate
  FROM film
  ORDER BY RANDOM()
  LIMIT 50
) AS sample_films;


-- =====================================================
-- SECTION 3: Estimating proportions from sample
-- Example: Proportion of active customers in sample
-- =====================================================

-- Sample 200 customers and estimate proportion active
SELECT 
  COUNT(*) FILTER (WHERE active = 1)::FLOAT / COUNT(*) AS active_ratio
FROM (
  SELECT active
  FROM customer
  ORDER BY RANDOM()
  LIMIT 200
) AS sample_customers;


-- =====================================================
-- SECTION 4: Confidence Interval using STDDEV and COUNT
-- (approximate; PostgreSQL lacks built-in t intervals)
-- =====================================================

-- Confidence interval around average rental duration from a sample
WITH sample AS (
  SELECT rental_duration
  FROM film
  ORDER BY RANDOM()
  LIMIT 100
)
SELECT 
  AVG(rental_duration) AS sample_mean,
  STDDEV_SAMP(rental_duration) / SQRT(COUNT(*)) * 1.96 AS margin_of_error,
  AVG(rental_duration) - STDDEV_SAMP(rental_duration) / SQRT(COUNT(*)) * 1.96 AS lower_bound,
  AVG(rental_duration) + STDDEV_SAMP(rental_duration) / SQRT(COUNT(*)) * 1.96 AS upper_bound
FROM sample;


-- =====================================================
-- SECTION 5: Summary
-- =====================================================
-- - RANDOM() helps simulate unbiased samples
-- - Aggregate functions (AVG, COUNT, STDDEV) estimate parameters
-- - Simple confidence intervals use normal approximation with large n
-- - Ideal for dashboard monitoring, report sampling, and inference
