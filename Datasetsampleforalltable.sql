--sample data for user table

INSERT INTO Users VALUES 
(1, 'Arun', 'arun@example.com', 'Chennai'),
(2, 'Priya', 'priya@example.com', 'Mumbai'),
(3, 'Ravi', 'ravi@example.com', 'Delhi'),
(4, 'Sneha', 'sneha@example.com', 'Bangalore'),
(5, 'Manoj', 'manoj@example.com', 'Hyderabad'),
(6, 'Kavya', 'kavya@example.com', 'Kolkata'),
(7, 'Vikram', 'vikram@example.com', 'Pune'),
(8, 'Divya', 'divya@example.com', 'Chennai'),
(9, 'Rakesh', 'rakesh@example.com', 'Mumbai'),
(10, 'Meena', 'meena@example.com', 'Delhi');

--sample data for Categories table

INSERT INTO Categories VALUES 
(1, 'Electronics'),
(2, 'Fashion'),
(3, 'Home Appliances'),
(4, 'Books'),
(5, 'Toys');

--sample data for Products table

INSERT INTO Products VALUES
(1, 'Smartphone', 15000.00, 1),
(2, 'Jeans', 1200.00, 2),
(3, 'Microwave Oven', 6000.00, 3),
(4, 'Story Book', 350.00, 4),
(5, 'Teddy Bear', 500.00, 5),
(6, 'Laptop', 45000.00, 1),
(7, 'T-shirt', 600.00, 2),
(8, 'Mixer Grinder', 2500.00, 3),
(9, 'Notebook', 50.00, 4),
(10, 'Toy Car', 300.00, 5);

--sample data for Orders table

INSERT INTO Orders VALUES
(1, 1, 1, 1, '2024-06-01'),
(2, 2, 2, 2, '2024-06-02'),
(3, 3, 6, 1, '2024-06-03'),
(4, 4, 4, 3, '2024-06-04'),
(5, 5, 3, 1, '2024-06-05'),
(6, 6, 5, 2, '2024-06-06'),
(7, 7, 7, 2, '2024-06-07'),
(8, 8, 8, 1, '2024-06-08'),
(9, 9, 9, 5, '2024-06-09'),
(10, 10, 10, 2, '2024-06-10');

--sample data for Payments table

INSERT INTO Payments VALUES
(1, 1, 'Credit Card', 'Completed', '2024-06-01'),
(2, 2, 'UPI', 'Completed', '2024-06-02'),
(3, 3, 'Net Banking', 'Pending', '2024-06-03'),
(4, 4, 'Credit Card', 'Completed', '2024-06-04'),
(5, 5, 'UPI', 'Completed', '2024-06-05'),
(6, 6, 'Cash on Delivery', 'Pending', '2024-06-06'),
(7, 7, 'Net Banking', 'Completed', '2024-06-07'),
(8, 8, 'Credit Card', 'Completed', '2024-06-08'),
(9, 9, 'UPI', 'Completed', '2024-06-09'),
(10, 10, 'Credit Card', 'Completed', '2024-06-10');

--sample data for Reviews table

INSERT INTO Reviews VALUES
(1, 1, 1, 4, 'Good smartphone', '2024-06-02'),
(2, 2, 2, 3, 'Jeans quality is average', '2024-06-03'),
(3, 6, 3, 5, 'Excellent laptop!', '2024-06-04'),
(4, 4, 4, 2, 'Storyline was boring', '2024-06-05'),
(5, 3, 5, 4, 'Works well so far', '2024-06-06'),
(6, 5, 6, 5, 'My kid loves it', '2024-06-07'),
(7, 7, 7, 4, 'Nice color and fit', '2024-06-08'),
(8, 8, 8, 3, 'Build quality average', '2024-06-09'),
(9, 9, 9, 5, 'Notebook is very useful', '2024-06-10'),
(10, 10, 10, 4, 'Good toy car', '2024-06-11');
