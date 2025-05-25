# Sampling Strategies in SQL

Sampling is the foundation of statistical inference. Whether you're analyzing massive datasets or preparing data for hypothesis testing, **sampling strategies** help reduce bias, save resources, and improve analytical efficiency. In this guide, we'll explore common techniques for drawing representative or targeted subsets of data using SQL.

---

## 🎯 Why Sampling Matters

* **Scalability**: Analyzing full datasets can be computationally expensive.
* **Exploration**: Quick samples help you inspect trends or test code.
* **Inference**: Statistical tests require proper random samples.
* **Experimentation**: Divide users or sessions into randomized test groups.

---

## 🧪 Simple Random Sampling (SRS)

Use `TABLESAMPLE`, `ORDER BY RANDOM()`, or modulus logic to randomly select rows.

### Example: 5% Random Sample

```sql
SELECT *
FROM customer
TABLESAMPLE SYSTEM (5);
```

### Alternative: Use `RANDOM()` for more control

```sql
SELECT *
FROM customer
WHERE RANDOM() < 0.05;  -- ~5% sample
```

### Reproducibility with seed

```sql
SELECT setseed(0.42);
SELECT * FROM customer WHERE RANDOM() < 0.1;
```

---

## 🔁 Stratified Sampling

To ensure subgroup representation (e.g., by country or category):

```sql
SELECT *
FROM (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY country ORDER BY RANDOM()) AS rnk
  FROM customer
) AS ranked
WHERE rnk <= 10;
```

This selects 10 random customers per country.

---

## 📚 Systematic Sampling

Select every *n*th row from a sorted dataset:

```sql
SELECT *
FROM (
  SELECT *, ROW_NUMBER() OVER (ORDER BY customer_id) AS rownum
  FROM customer
) AS numbered
WHERE rownum % 10 = 1;
```

This gives every 10th customer starting from the 1st.

---

## 🎲 Split into Control vs. Test Groups

A classic A/B testing setup:

```sql
SELECT *,
       CASE WHEN customer_id % 2 = 0 THEN 'control' ELSE 'test' END AS group_assignment
FROM customer;
```

More groups?

```sql
SELECT *,
       CASE WHEN customer_id % 3 = 0 THEN 'A'
            WHEN customer_id % 3 = 1 THEN 'B'
            ELSE 'C' END AS test_group
FROM customer;
```

---

## 🧠 Best Practices

| Principle       | Tip                                                        |
| --------------- | ---------------------------------------------------------- |
| Randomness      | Use `RANDOM()` for truly random samples                    |
| Reproducibility | Use `setseed()` before sampling                            |
| Representation  | Use stratified sampling when groups differ                 |
| Avoid bias      | Don’t sample from pre-filtered or sorted datasets          |
| Performance     | Limit sampling on large tables with `LIMIT`, `TABLESAMPLE` |

---

## ✅ Summary

Sampling is essential for testing, scaling, and simulating with data. SQL provides many powerful tools to extract useful subsets without relying on external tools. Choose the right sampling method for your use case — random, stratified, systematic, or split-based.
