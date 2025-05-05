# Customer Compass: Customer Segmentation Data Modeling Project

**Project Type:**  
Database Design & Relational Data Modeling (Conceptual – No dataset or analysis)

---

## 1. Project Overview

Customer Compass is a conceptual data modeling project that demonstrates my skills in designing a scalable, normalized relational database. It models how a customer segmentation system could be implemented in a retail or e-commerce context.

---

## 2. Objective

To design a normalized schema for managing customer details, segmentation history, orders, product inventory, delivery addresses, and payments with a focus on tracking historical segment changes.

---

## 3. Entity-Relationship Design

| Table Name                 | Description |
|---------------------------|-------------|
| Customers                 | Stores basic information about each customer |
| Segments                  | Defines customer segments like loyalty levels or behavioral groups |
| Customer_Segments_History| Tracks historical changes in customer segments |
| Products                  | Product catalog with stock and pricing info |
| Orders                    | Records purchases made by customers |
| Order_Items               | Links products to orders (many-to-many junction table) |
| Order_Address             | Stores delivery address tied to each order |
| Payments                  | Records transaction details per order |

---

## 4. Schema Design (`schema.sql`)

Includes SQL code for creating the database tables and relationships. See `schema.sql`.

---

## 5. Relationships

- Customers ↔ Orders: One-to-Many  
- Customers ↔ Customer_Segments_History: One-to-Many  
- Segments ↔ Customer_Segments_History: One-to-Many  
- Orders ↔ Order_Items: One-to-Many  
- Products ↔ Order_Items: One-to-Many  
- Orders ↔ Order_Address: One-to-One  
- Orders ↔ Payments: One-to-One  

---

## 6. Normalization

The schema is normalized up to **Third Normal Form (3NF)**:
- No redundant or duplicate data
- Historical segment changes are tracked in a separate history table
- Each entity has a clear primary key and foreign key integrity

---

## 7. Tools & Skills Demonstrated

- SQL & Relational Database Design  
- ER Modeling  
- Normalization & Relationship Mapping  
- Schema Planning for Customer Segmentation Systems

---

## 8. Project Status

- **Completed:** Schema Design, ERD, and Documentation  
- **Not Included:** Dataset, SQL Queries, or Analysis Logic  
