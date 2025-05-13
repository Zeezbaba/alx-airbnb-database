## 📊 Index Performance Analysis
### Objective
Measure and compare the performance of SQL queries before and after applying indexes using EXPLAIN and ANALYZE to understand how indexes optimize database query execution.

- **🔍 Query**: Retrieve All Bookings for a User
  ```sql
    SELECT * FROM bookings WHERE user_id = 42;
- **⏱ Before Index**
  ```sql
    EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 42;
- **Result:**

- Seq Scan on bookings

- Cost: 0.00..420.00

- Execution Time: ~15ms

- Rows: 120

**🔴 Observation**: Without an index, PostgreSQL uses a sequential scan across the entire bookings table.

- **✅ After Adding Index**
  ```sql
    CREATE INDEX idx_bookings_user_id ON bookings(user_id);

    EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 42;
**Result:**

- Index Scan using idx_bookings_user_id

- Cost: 0.12..10.30

- Execution Time: ~1ms

- Rows: 120

**🟢 Observation**: The query now uses an index scan, significantly improving the performance.

- **🔍 Query**: Search Properties by Location and Price
  ```sql
    SELECT * FROM properties WHERE location = 'Paris' AND price < 200;
- **⏱ Before Index**
  ```sql
    EXPLAIN ANALYZE SELECT * FROM properties WHERE location = 'Paris' AND price < 200;
**Result:**

- Seq Scan on properties

- Cost: 0.00..550.00

- Execution Time: ~20ms

- Rows: 80

**🔴 Observation**: Slow due to full table scan.

- **✅ After Adding Index**
  ```sql
    CREATE INDEX idx_properties_location_price ON properties(location, price);

    EXPLAIN ANALYZE SELECT * FROM properties WHERE location = 'Paris' AND price < 200;
**Result:**

- Index Scan using idx_properties_location_price

- Cost: 0.15..8.25

- Execution Time: ~2ms

- : 80

**🟢 Observation**: The index improves filter performance by narrowing down rows early.

### Conclusion
- ✅ Indexes reduce query execution time significantly.

- 🔍 Use EXPLAIN and ANALYZE to verify index effectiveness.

- 🎯 Apply indexes on columns used frequently in WHERE, JOIN, or ORDER BY clauses.