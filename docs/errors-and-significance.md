# Errors and Significance: Interpreting Hypothesis Tests

Understanding the **significance level**, **p-values**, and the **two types of errors** in hypothesis testing is crucial for data-driven decision-making. These concepts are the foundation of knowing when to trust your results and when to be cautious.

This guide explains the trade-offs, common SQL interpretations, and practical implications in a business context.

---

## ⚖️ Significance Level (α)

* The threshold you set for how unlikely your result must be **under the null hypothesis (H0)** to consider it significant.
* Common choices:

  * α = 0.05 (5% risk of false positive)
  * α = 0.01 (stricter threshold)

### In SQL:

Significance isn’t calculated automatically. You typically **export your aggregates** and calculate p-values using Python, R, or Excel.

But SQL can help you **simulate** or **frame** results for interpretation:

```sql
-- Example: Conversion rate difference across two signup flows
SELECT group_id,
       COUNT(*) AS users,
       SUM(converted::int) AS conversions,
       ROUND(AVG(converted::int), 3) AS conversion_rate
FROM ab_signup_test
GROUP BY group_id;
```

---

## 🧪 P-Values

* The **probability of seeing your data (or more extreme)** given that the null hypothesis is true.
* A small p-value (e.g., < α) = strong evidence against H0.
* **Do NOT interpret as probability that H0 is true**.

### Guidelines:

* **p < α** ➔ Reject H0 (significant result)
* **p ≥ α** ➔ Do not reject H0 (no significant evidence)

---

## 🧵 Type I and Type II Errors

| Error Type        | Definition                                  | Risk when...                 | Impact in Business                              |
| ----------------- | ------------------------------------------- | ---------------------------- | ----------------------------------------------- |
| Type I Error (α)  | False Positive — rejecting a true H0        | p < α even if no real effect | Acting on noise (e.g., rolling out bad feature) |
| Type II Error (β) | False Negative — failing to reject false H0 | p > α even when H1 is true   | Missing an opportunity                          |

The lower your significance level, the lower the risk of Type I error — but the higher your risk of missing real effects (Type II).

### ⚡ Practical Example

You A/B test a new pricing tier. Your p-value is 0.07:

* α = 0.05: Not statistically significant
* But the new tier shows +6% revenue
* Consider risk tolerance, sample size, and business impact

---

## 🔄 Balancing Significance and Business Value

| P-Value | Statistically Significant? | Business Action                 |
| ------- | -------------------------- | ------------------------------- |
| 0.001   | Yes                        | Likely implement (very strong)  |
| 0.04    | Yes                        | Consider rollout                |
| 0.07    | No (at α = 0.05)           | Maybe test again / segment more |
| 0.15    | No                         | Likely no action                |

> “Statistical significance is not the same as **practical significance**.”

---

## 🔧 SQL Tips for Hypothesis Framing

* Use `FILTER()` to count conditional metrics
* Use `CASE WHEN` for experiment flagging
* Use `WIDTH_BUCKET()` to bin continuous metrics for comparison

```sql
-- Quick example: Flag likely outliers in payment
SELECT customer_id, amount,
       CASE
         WHEN amount > (SELECT PERCENTILE_CONT(0.95) WITHIN GROUP (ORDER BY amount) FROM payment)
         THEN 'Top 5%' ELSE 'Normal' END AS bucket
FROM payment;
```

---

## ✅ Best Practices

* **Pre-define** your significance level (α) before running the test
* Document **sample size**, **test period**, and **expected lift**
* Use SQL for **prep and summary**, Python/R for full p-value calculations
* Communicate results with **both statistical and business interpretation**

---

## Summary

Understanding statistical errors and significance levels is essential for trustworthy insights. SQL lets you explore and frame hypotheses powerfully, even if final significance testing happens outside the database.

Use these concepts to avoid false conclusions, validate what works, and scale decisions with confidence.
