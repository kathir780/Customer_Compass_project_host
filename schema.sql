-- Customers
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    email VARCHAR(100)
);

-- Segments
CREATE TABLE Segments (
    segment_id INT PRIMARY KEY,
    segment_type VARCHAR(100),
    start_date DATE,
    end_date DATE
);

-- Customer_Segments_History
CREATE TABLE Customer_Segments_History (
    customer_id INT,
    segment_id INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (segment_id) REFERENCES Segments(segment_id)
);

-- Products
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);

-- Orders
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Order_Items
CREATE TABLE Order_Items (
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Order_Address
CREATE TABLE Order_Address (
    address_id INT PRIMARY KEY,
    order_id INT,
    door_no INT,
    street VARCHAR(100),
    city VARCHAR(50),
    district VARCHAR(50),
    state VARCHAR(50),
    pincode INT,
    country VARCHAR(50),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Payments
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATETIME,
    payment_method VARCHAR(50),
    status ENUM('Success', 'Failed', 'Pending'),
    amount DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
