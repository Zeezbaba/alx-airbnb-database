# Database Normalization to 3NF

## Objective
To ensure that our relational database schema adheres to the Third Normal Form (3NF) to eliminate redundancy, improve integrity, and maintain scalability.

---

## Step-by-Step Normalization

### 1. First Normal Form (1NF)
- All tables have atomic columns.
- No repeating groups or arrays.
- Example: `phone_number` is a single VARCHAR field in the `User` table.

### 2. Second Normal Form (2NF)
- Each non-key attribute is fully dependent on the entire primary key.
- All tables have a single-column primary key (UUIDs), so partial dependencies are avoided by design.

### 3. Third Normal Form (3NF)
- All attributes are only dependent on the primary key.
- No transitive dependencies were found.
- Each table represents a single entity and all non-key fields are relevant to that entity only.

---

## Conclusion

The database design conforms to 3NF. No adjustments were needed. However, in future iterations, we may consider:
- Replacing ENUMs with reference tables for flexibility and extensibility.
- Adding views for calculated fields such as booking duration or total revenue, instead of storing them in the schema.

---

