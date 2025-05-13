# SQL Joins Task

## 📌 Objective
The goal of this task was to understand and practice how different types of SQL joins work by writing real SQL queries.

## 🧠 What I Did

I explored **three types of SQL joins** and used them to connect related tables in a booking system:

### 1. INNER JOIN
- Retrieves only users **who have made bookings**.
- ✅ Shows only matching records from both `users` and `bookings`.

### 2. LEFT JOIN
- Retrieves **all properties**, even if they **have no reviews**.
- ✅ Shows all from the `properties` table and any matches in the `reviews` table.

### 3. FULL OUTER JOIN
- Retrieves **all users** and **all bookings**, even if there's **no match** between them.
- ✅ Combines everything from both `users` and `bookings` tables.

> 💡 Bonus: We learned how to simulate a FULL OUTER JOIN in MySQL by using a combination of `LEFT JOIN` and `RIGHT JOIN` with `UNION`.

## 🧾 Summary Table

| Join Type        | What It Shows                                         |
|------------------|-------------------------------------------------------|
| INNER JOIN       | Records with matches in both tables                  |
| LEFT JOIN        | All left table records, and matches from the right   |
| FULL OUTER JOIN  | All records from both tables, matched or not         |

## ✅ Outcome
I practiced writing SQL queries using INNER JOIN, LEFT JOIN, and FULL OUTER JOIN to fetch relevant data from multiple tables and better understand how data is related in a relational database.


# SQL Subqueries Task

## 📌 Objective
The goal of this task is to practice writing both **correlated** and **non-correlated** SQL subqueries using real-world scenarios from a property booking system.

---

## 🧠 What We Did

We wrote two types of subqueries:

### 1. 🔄 Non-Correlated Subquery
- **Purpose**: Find all properties with an **average rating greater than 4.0**.
- **Description**: This subquery runs independently and returns property IDs that meet the condition. The main query then selects full property details using those IDs.

### 2. 🔁 Correlated Subquery
- **Purpose**: Find all users who have **made more than 3 bookings**.

- **Description**: This subquery runs once for each row in the outer query, using the user_id dynamically from the outer scope.

---