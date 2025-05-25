# Hypothesis Testing in SQL: A Practical Guide for Analysts

Hypothesis testing helps you decide whether an observed effect is statistically significant or simply due to chance. In a business context, it’s used to validate experiments, compare conversion rates, assess A/B test results, and evaluate whether a change in process, pricing, or experience leads to meaningful improvement.

This guide introduces core concepts, typical SQL examples, and practical tips to apply hypothesis testing in real-world data workflows.

---

## 📌 Key Concepts

| Concept                     | Description                                                         |
| --------------------------- | ------------------------------------------------------------------- |
| Null Hypothesis (H0)        | The default assumption — no difference, no effect                   |
| Alternative Hypothesis (H1) | The assumption you're testing — that there is a difference          |
| P-value                     | Probability of observing your data if the null hypothesis were true |
| Significance Level (α)      | Threshold for rejecting H0 (commonly set to 0.05)                   |
| Type I Error                | False positive — rejecting H0 when it's actually true               |
| Type II Error               | False negative — failing to reject H0 when H1 is actually true      |

---

## 🧪 Business Scenario: A/B Test on Email Campaign

You run a test where:

* Group A gets a basic subject line
* Group B gets a personalized subject line

You want to know if the open rate is significantly higher for Group B.

---

## 📊 SQL Setup Example

Assume we have a table `email_test_results` with:

```sql
CREATE TABLE email_test_results (
  group_id TEXT,        -- 'A' or 'B'
  opened BOOLEAN        -- TRUE if email was opened
);
```

### Count opens and totals

```sql
SELECT group_id,
       COUNT(*) AS total,
       SUM(opened::int) AS opened
FROM email_test_results
GROUP BY group_id;
```

### Convert proportions to mean

```sql
SELECT group_id,
       AVG(opened::int) AS open_rate
FROM email_test_results
GROUP BY group_id;
```

---

## ✅ Perform a 2-sample t-test using PostgreSQL

Use a CTE to create a view for each group:

```sql
WITH a AS (
  SELECT opened::int AS open FROM email_test_results WHERE group_id = 'A'
),
b AS (
  SELECT opened::int AS open FROM email_test_results WHERE group_id = 'B'
)
SELECT
  (SELECT AVG(open) FROM a) AS avg_a,
  (SELECT STDDEV_SAMP(open) FROM a) AS std_a,
  (SELECT COUNT(*) FROM a) AS n_a,
  (SELECT AVG(open) FROM b) AS avg_b,
  (SELECT STDDEV_SAMP(open) FROM b) AS std_b,
  (SELECT COUNT(*) FROM b) AS n_b;
```

> Note: While PostgreSQL doesn't have a built-in `T_TEST()` function, you can compute the t-statistic manually or export to Python/R for full analysis.

---

## 🧠 Interpreting Results

* **P-value < α**: Reject the null hypothesis — a statistically significant difference likely exists.
* **P-value ≥ α**: Do not reject H0 — the difference may be due to chance.
* **Use confidence intervals** to describe the size of the difference and the range of uncertainty.

---

## 🔍 Example: Evaluate Significance of Cart Conversion

You track the number of users who added an item to cart and how many completed checkout:

```sql
SELECT
  COUNT(*) FILTER (WHERE status = 'checkout') * 1.0 / COUNT(*) AS conversion_rate
FROM user_flow
WHERE event_date BETWEEN '2024-01-01' AND '2024-01-31';
```

Use `pg_stat_statements` or export the result to run further testing in Python if needed.

---

## ✅ Best Practices

* Choose the **right test** for your sample size, distribution, and metric type
* Always **pre-define α** before running the test
* Use SQL to **prepare and summarize** test data, but do statistical testing in Python/R if complex
* Interpret **practical significance**, not just statistical

---

## Final Thought

Hypothesis testing brings scientific rigor to your analytics. Done right, it protects you from acting on noise and helps you scale only what's proven to work. Start small in SQL — and grow into richer statistical workflows as your analyses mature.
