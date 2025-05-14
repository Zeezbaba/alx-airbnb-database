# Booking Table Partitioning Performance Report

## Objective
The goal was to optimize the performance of queries on the large `Booking` table by implementing partitioning based on the `start_date` column.

## Methodology
We created a partitioned table `Booking_partitioned` using PostgreSQL's **RANGE** partitioning strategy. Two partitions were created:
- `bookings_2024`: for bookings from 2024
- `bookings_2025`: for bookings from 2025

Indexes were added to each partition on frequently queried columns such as `user_id` and `property_id`.

We then used `EXPLAIN ANALYZE` to measure the performance of queries filtering bookings by date range before and after partitioning.

## Performance Improvements

| Metric                      | Before Partitioning | After Partitioning |
|----------------------------|---------------------|--------------------|
| Rows Scanned               | High (entire table) | Reduced (partition only) |
| Execution Time             | Longer              | Shorter             |
| Index Usage                | Limited             | Improved per partition |
| Disk I/O                   | Higher              | Reduced             |

## Observations
- **Reduced Scan Scope**: Queries targeting a specific date range now access only the relevant partition, minimizing the number of rows scanned.
- **Faster Execution**: Query response times significantly improved, especially for large datasets.
- **Better Resource Utilization**: CPU and memory usage decreased due to partition pruning and more effective indexing.

## Conclusion
Partitioning the `Booking` table by `start_date` greatly improved performance for date-based queries. This strategy is highly recommended for large tables where data can be logically segmented.
