# Understanding Distributions: Patterns, Shapes, and Business Impact

Distributions tell the story behind your data — where values cluster, how they spread, and whether they're skewed, flat, or symmetric. Knowing the shape and spread of a distribution helps you select the right statistical methods, make informed business decisions, and avoid misleading averages.

This guide introduces key concepts, SQL examples, and real-world use cases for working with distributions.

---

## 🎯 Why Distributions Matter

| Distribution Insight       | Business Application                         |
| -------------------------- | -------------------------------------------- |
| Skewed revenue per order   | Adjust targeting for high-spenders           |
| Bimodal customer frequency | Identify distinct behavioral segments        |
| Long tail product sales    | Optimize inventory and promotion strategy    |
| Normal delivery times      | Justify use of standard confidence intervals |

---

## 🔍 Key Distribution Shapes

* **Normal (bell-shaped):** Common in process metrics, delivery times
* **Skewed Right (long tail):** Typical for revenue, purchase size
* **Skewed Left:** Can appear in test scores, failure rates
* **Uniform:** Rare, but useful as baseline or in controlled tests
* **Bimodal:** Indicates two distinct subgroups in your data

---

## 📊 Exploring Distributions in SQL

### 1. Histogram using `width_bucket()`

```sql
SELECT width_bucket(amount, 0, 100, 10) AS bucket,
       COUNT(*) AS frequency
FROM payment
GROUP BY bucket
ORDER BY bucket;
```

This gives you a rough histogram for the `amount` column, dividing it into 10 equal-width bins between 0 and 100.

### 2. Quartiles with `percentile_cont()`

```sql
SELECT
  PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY amount) AS q1,
  PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY amount) AS median,
  PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY amount) AS q3
FROM payment;
```

Helps identify skew and IQR.

### 3. Cumulative distribution with `cume_dist()`

```sql
SELECT customer_id, amount,
       CUME_DIST() OVER (ORDER BY amount) AS percentile
FROM payment;
```

Find out where a specific payment stands in the distribution.

---

## 🧠 Business Use: Spotting the Tail

High-value outliers often deserve special treatment:

```sql
SELECT customer_id, amount
FROM payment
WHERE amount > (
  SELECT PERCENTILE_CONT(0.95) WITHIN GROUP (ORDER BY amount)
  FROM payment
);
```

Targeting top 5% spenders for loyalty campaigns or account management.

---

## 📈 When Distribution Matters Most

* **Choosing models:** Assumptions differ for linear regression vs. logistic
* **Using mean vs. median:** Median is safer for skewed data
* **Setting thresholds:** Knowing the typical spread avoids false positives
* **Evaluating performance:** Understand variance vs. consistent results

---

## ✅ Best Practices

* Always visualize or bucket distributions before drawing conclusions
* Use percentiles and quartiles to avoid misleading means
* Segment data (by product, customer, etc.) to uncover hidden shapes
* For modeling, test for normality when needed — but don't assume it

---

Understanding distributions lets you describe your data fully — not just what's typical, but also what's rare, extreme, or unexpectedly clustered. That context often holds the key to better decision-making.
