-- ========================================================
-- 05_hypothesis_testing_and_experiments.sql
-- Statistical inference, hypothesis testing, confidence intervals, A/B tests
-- ========================================================

-- 🧪 Mean comparison between two customer groups
SELECT 
  customer_group,
  ROUND(AVG(amount), 2) AS avg_payment,
  COUNT(*) AS num_payments
FROM customer_payments
GROUP BY customer_group;


-- 🧪 Confidence interval for mean payment (95%)
WITH stats AS (
  SELECT 
    AVG(amount) AS mean,
    STDDEV(amount) AS stddev,
    COUNT(*) AS n
  FROM payment
)
SELECT 
  mean,
  mean - 1.96 * stddev / SQRT(n) AS ci_lower,
  mean + 1.96 * stddev / SQRT(n) AS ci_upper
FROM stats;


-- 🧪 Effect size (Cohen's d approximation) between A/B groups
WITH stats AS (
  SELECT group_name, AVG(amount) AS mean, STDDEV(amount) AS stddev
  FROM ab_test_results
  GROUP BY group_name
)
SELECT 
  (MAX(mean) - MIN(mean)) / SQRT((SUM(stddev^2) / 2)) AS cohen_d
FROM stats;


-- 🧪 Bootstrap-style resampling (random subset, not true bootstrap)
SELECT *
FROM ab_test_results
ORDER BY RANDOM()
LIMIT 1000;


-- 🧪 Simulated binomial test output (logic only – no native function)
-- Check if a conversion rate is significantly > baseline (e.g., 5%)
SELECT
  campaign_id,
  COUNT(*) FILTER (WHERE converted) AS conversions,
  COUNT(*) AS total,
  ROUND(COUNT(*) FILTER (WHERE converted) * 1.0 / COUNT(*), 4) AS conv_rate,
  -- Approximate Z-test logic placeholder (would be in Python or stats lib)
  CASE WHEN ROUND(COUNT(*) FILTER (WHERE converted) * 1.0 / COUNT(*), 4) > 0.05 THEN 'Potentially Significant' 
       ELSE 'Not Significant' END AS test_result
FROM campaign_results
GROUP BY campaign_id;


-- 🧪 Z-score for individual payments (vs population mean)
WITH stats AS (
  SELECT AVG(amount) AS mean, STDDEV(amount) AS stddev FROM payment
)
SELECT 
  p.payment_id,
  p.amount,
  ROUND((p.amount - stats.mean) / stats.stddev, 2) AS z_score
FROM payment p, stats
ORDER BY z_score DESC
LIMIT 100;


-- 🧪 Bonferroni correction for multiple comparisons (e.g., 5 tests)
SELECT 0.05 / 5 AS adjusted_alpha;


-- 🧪 Conversion rates and lift between test variants
WITH conv AS (
  SELECT group_name,
         COUNT(*) FILTER (WHERE converted) AS conversions,
         COUNT(*) AS total
  FROM ab_test_results
  GROUP BY group_name
)
SELECT 
  c1.group_name AS variant,
  ROUND(c1.conversions * 1.0 / c1.total, 4) AS conv_rate,
  ROUND((c1.conversions * 1.0 / c1.total) - 
        (c2.conversions * 1.0 / c2.total), 4) AS lift_vs_baseline
FROM conv c1
CROSS JOIN conv c2
WHERE c2.group_name = 'control';


-- 🧪 Confidence interval for difference in means (between test variants)
WITH ab_stats AS (
  SELECT group_name, COUNT(*) AS n, AVG(amount) AS mean, STDDEV(amount) AS std
  FROM ab_test_results
  GROUP BY group_name
),
agg AS (
  SELECT MAX(mean) - MIN(mean) AS diff,
         SQRT(SUM((std^2)/n)) AS se
  FROM ab_stats
)
SELECT 
  diff,
  diff - 1.96 * se AS lower_ci,
  diff + 1.96 * se AS upper_ci
FROM agg;
