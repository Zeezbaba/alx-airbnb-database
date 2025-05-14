# 📊 Query Optimization Summary

## 🏁 Overview of Original Query

The original SQL query aimed to fetch booking records alongside their related user, property, and payment data. However, it encountered several performance issues, such as:

- Extensive row scans due to missing indexes.
- Inclusion of excess fields in the SELECT clause, adding unnecessary overhead.

---

## 🚨 Performance Bottlenecks Identified

During performance analysis, the following issues were discovered:

- **Full Table Scans**: The database executed full scans on `bookings`, `users`, `properties`, and `payments`.
- **Unindexed Joins**: Columns used for JOIN operations lacked supporting indexes.
- **Inefficient Filtering**: The absence of WHERE conditions increased the number of rows processed.

---

## 🔧 Refactored Query Enhancements

To address the issues, the query was rewritten with the following improvements:

- **Streamlined Output**: Only essential fields are selected, minimizing data transfer and processing.
- **Row Filtering**: A condition was added to fetch only confirmed bookings:
  ```sql
  WHERE b.status = 'confirmed'

**Indexing Strategy**: Created indexes on frequently used columns:

- user_id

- property_id

- booking_id

- status

### 📈 Before and After Comparison
| Metric              | Original Query | Optimized Query |
| ------------------- | -------------- | --------------- |
| Rows Processed      | High (X)       | Lower (Y)       |
| Execution Time (ms) | Slower (A)     | Faster (B)      |
| Index Utilization   | No             | Yes             |


### ✅ Final Thoughts
By reducing data volume in SELECT, applying filters, and introducing appropriate indexes, the revised query achieved substantial gains in speed and efficiency. These optimizations demonstrate the importance of fine-tuning SQL queries for scalable application performance.