-- 1. List all products with their category names

SELECT P.ProductName, C.CategoryName
FROM Products P
JOIN Categories C ON P.CategoryID = C.CategoryID;


-- 2. Total amount spent by each user

SELECT U.Name, SUM(P.Price * O.Quantity) AS TotalSpent
FROM Orders O
JOIN Users U ON O.UserID = U.UserID
JOIN Products P ON O.ProductID = P.ProductID
GROUP BY U.UserID, U.Name;


-- 3. Most ordered product

SELECT P.ProductName, SUM(O.Quantity) AS TotalQuantity
FROM Orders O
JOIN Products P ON O.ProductID = P.ProductID
GROUP BY P.ProductName
ORDER BY TotalQuantity DESC
LIMIT 1;


--  4. Top 3 products by average rating

SELECT P.ProductName, AVG(R.Rating) AS AvgRating
FROM Reviews R
JOIN Products P ON R.ProductID = P.ProductID
GROUP BY P.ProductName
ORDER BY AvgRating DESC
LIMIT 3;


-- 5. List all orders with user and payment status

SELECT O.OrderID, U.Name AS Customer, P.PaymentMethod, P.PaymentStatus
FROM Orders O
JOIN Users U ON O.UserID = U.UserID
JOIN Payments P ON O.OrderID = P.OrderID;


-- 6. Daily total order value

SELECT OrderDate, SUM(Pr.Price * O.Quantity) AS TotalValue
FROM Orders O
JOIN Products Pr ON O.ProductID = Pr.ProductID
GROUP BY OrderDate
ORDER BY OrderDate;


-- 7. Products that were never ordered

SELECT ProductName
FROM Products
WHERE ProductID NOT IN (SELECT ProductID FROM Orders);


-- 8. Number of reviews per product

SELECT P.ProductName, COUNT(R.ReviewID) AS ReviewCount
FROM Products P
LEFT JOIN Reviews R ON P.ProductID = R.ProductID
GROUP BY P.ProductName;


-- 9. Orders with pending payments

SELECT O.OrderID, U.Name, P.PaymentStatus
FROM Orders O
JOIN Users U ON O.UserID = U.UserID
JOIN Payments P ON O.OrderID = P.OrderID
WHERE P.PaymentStatus = 'Pending';


-- 10. Average order quantity per user

SELECT U.Name, AVG(O.Quantity) AS AvgQuantity
FROM Orders O
JOIN Users U ON O.UserID = U.UserID
GROUP BY U.UserID;