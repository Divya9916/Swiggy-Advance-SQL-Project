-- Create Database
CREATE DATABASE IF NOT EXISTS SwiggyDB;
USE SwiggyDB;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone_number VARCHAR(15),
    city VARCHAR(50) NOT NULL,
    address VARCHAR(255)
);

-- Inserting data into Customers table
INSERT INTO Customers (name, email, phone_number, city, address)
VALUES 
('Amit Sharma', 'amit.sharma@gmail.com', '9876543210', 'Mumbai', 'A-12, Andheri West'),
('Rohini Verma', 'rohini.verma@yahoo.com', '9823456789', 'Delhi', 'B-23, Saket'),
('Rajesh Gupta', 'rajesh.gupta@gmail.com', NULL, 'Mumbai', 'C-34, Colaba'),
('Sneha Mehta', 'sneha.mehta@gmail.com', '9812345678', 'Pune', NULL),
('Manish Kumar', NULL, '9834567890', 'Delhi', 'D-45, Lajpat Nagar'),
('Priya Singh', 'priya.singh@hotmail.com', '9845678901', 'Kolkata', 'E-56, Salt Lake'),
('Vikas Reddy', 'vikas.reddy@gmail.com', '9878901234', 'Chennai', 'F-67, T. Nagar'),
('Anjali Patel', 'anjali.patel@yahoo.com', '9890123456', 'Ahmedabad', NULL),
('Suresh Nair', NULL, '9801234567', 'Bangalore', 'G-78, Koramangala'),
('Kavita Deshmukh', 'kavita.deshmukh@gmail.com', NULL, 'Pune', 'H-89, Hinjewadi'),
('Vivek Bhatt', 'vivek.bhatt@gmail.com', '9810987654', 'Indore', 'I-90, Vijay Nagar'),
('Meera Joshi', NULL, '9823567890', 'Jaipur', 'J-11, Malviya Nagar'),
('Pankaj Jain', 'pankaj.jain@yahoo.com', '9834012345', 'Surat', NULL),
('Nidhi Saxena', 'nidhi.saxena@gmail.com', '9845123789', 'Lucknow', 'K-21, Gomti Nagar'),
('Ashok Kumar', 'ashok.kumar@yahoo.com', NULL, 'Chennai', 'L-32, Anna Nagar'),
('Deepa Rao', 'deepa.rao@gmail.com', '9856123456', 'Bangalore', NULL),
('Karan Kapoor', 'karan.kapoor@gmail.com', '9867234567', 'Noida', 'M-43, Sector 62'),
('Sonali Mishra', NULL, '9878345678', 'Delhi', 'N-54, Karol Bagh'),
('Arjun Desai', 'arjun.desai@yahoo.com', NULL, 'Mumbai', 'O-65, Bandra'),
('Shweta Bansal', 'shweta.bansal@gmail.com', '9889456789', 'Bhopal', NULL),
('Rahul Chatterjee', 'rahul.chatterjee@gmail.com', '9890567890', 'Kolkata', 'P-76, New Alipore'),
('Neha Kaushik', 'neha.kaushik@yahoo.com', NULL, 'Lucknow', 'Q-87, Aliganj'),
('Ravi Singh', 'ravi.singh@gmail.com', '9801678901', 'Mumbai', 'R-98, Andheri East'),
('Sonal Kaur', 'sonal.kaur@gmail.com', NULL, 'Amritsar', 'S-19, Ranjit Avenue'),
('Vivek Malhotra', 'vivek.malhotra@hotmail.com', '9812789012', 'Thane', NULL),
('Divya Iyer', NULL, '9823890123', 'Bangalore', 'T-20, Indiranagar'),
('Rakesh Yadav', 'rakesh.yadav@gmail.com', '9834901234', 'Varanasi', 'U-31, Lanka'),
('Mona Sharma', 'mona.sharma@yahoo.com', '9845012345', 'Ranchi', NULL),
('Sudha Pillai', 'sudha.pillai@gmail.com', '9856123789', 'Kozhikode', 'V-42, Mavoor Road'),
('Gaurav Khanna', NULL, '9867238901', 'Gwalior', 'W-53, City Centre');

CREATE TABLE Restaurants (
    restaurant_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    cuisine VARCHAR(50) NOT NULL,
    rating DECIMAL(3, 2) CHECK (rating >= 1.0 AND rating <= 5.0)
);

-- Inserting data into Restaurants table
INSERT INTO Restaurants (name, city, cuisine, rating)
VALUES 
('Spice of India', 'Mumbai', 'North Indian', 4.5),
('Tandoori Flames', 'Delhi', 'Mughlai', 4.2),
('Biryani House', 'Hyderabad', 'Hyderabadi', 4.8),
('Curry Pot', 'Bangalore', 'South Indian', 4.1),
('Taste of Punjab', 'Mumbai', 'Punjabi', NULL),
('Royal Biryani', 'Kolkata', 'Biryani', 4.7),
('Coastal Delight', 'Chennai', 'Seafood', 4.3),
('Veggie Delight', 'Pune', 'Vegetarian', 4.0),
('Gujarat Express', 'Ahmedabad', 'Gujarati', 3.9),
('Andhra Spice', 'Bangalore', 'Andhra', 4.4),
('Punjabi Tadka', 'Delhi', 'Punjabi', 4.2),
('Flavours of Bengal', 'Kolkata', 'Bengali', 4.6),
('South Treat', 'Chennai', 'South Indian', NULL),
('The Great Indian Thali', 'Mumbai', 'Thali', 4.4),
('Rajasthani Rasoi', 'Jaipur', 'Rajasthani', 4.5),
('Kerala Kitchen', 'Kochi', 'Kerala', 4.1),
('Chaat Junction', 'Delhi', 'Street Food', NULL),
('Maharashtrian Magic', 'Pune', 'Maharashtrian', 4.3),
('Awadhi Zaika', 'Lucknow', 'Awadhi', 4.6),
('Bombay Bhel', 'Mumbai', 'Street Food', 4.0),
('Saffron Spice', 'Bangalore', 'North Indian', 4.3),
('Paradise Biryani', 'Hyderabad', 'Biryani', 4.8),
('Tamil Treat', 'Chennai', 'Tamil', 4.2),
('Bengali Bhuri Bhoj', 'Kolkata', 'Bengali', NULL),
('Udupi Palace', 'Bangalore', 'South Indian', 4.4),
('Shahi Dawat', 'Delhi', 'Mughlai', 4.5),
('Marwari Bhojanalay', 'Jaipur', 'Rajasthani', 4.2),
('Fish Fry', 'Kochi', 'Seafood', 4.3),
('Thane Tadka', 'Thane', 'North Indian', 4.1),
('Lucknowi Nawabi', 'Lucknow', 'Awadhi', 4.7);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    restaurant_id INT,
    order_date DATETIME NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    status VARCHAR(20) CHECK (status IN ('Pending', 'Processing', 'Completed', 'Cancelled')),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id)
);

-- Inserting data into Orders table
INSERT INTO Orders (customer_id, restaurant_id, order_date, status, total_amount)
VALUES 
(1, 3, '2024-08-01', 'Completed', 750.00),
(2, 5, '2024-08-02', 'Completed', 600.00),
(3, 1, '2024-08-04', 'Cancelled', 0.00),
(4, 7, '2024-08-01', 'Completed', 850.00),
(5, 2, '2024-08-03', 'Completed', 1200.00),
(1, 4, '2024-08-06', 'Processing', 500.00),
(6, 8, '2024-08-03', 'Completed', 950.00),
(7, 9, '2024-08-08', 'Completed', 700.00),
(8, 6, '2024-08-02', 'Completed', 650.00),
(9, 11, '2024-08-09', 'Cancelled', 0.00),
(10, 12, '2024-08-01', 'Completed', 900.00),
(2, 13, '2024-08-04', 'Completed', 550.00),
(3, 14, '2024-08-05', 'Completed', 750.00),
(11, 4, '2024-08-06', 'Processing', 800.00),
(12, 15, '2024-08-10', 'Completed', 1100.00),
(13, 10, '2024-08-01', 'Completed', 950.00),
(14, 7, '2024-08-11', 'Cancelled', 0.00),
(5, 3, '2024-08-04', 'Completed', 1200.00),
(15, 17, '2024-08-06', 'Completed', 1300.00),
(16, 18, '2024-08-02', 'Processing', 850.00),
(6, 19, '2024-08-09', 'Completed', 800.00),
(17, 1, '2024-08-01', 'Completed', 450.00),
(18, 3, '2024-08-05', 'Completed', 1250.00),
(19, 8, '2024-08-03', 'Cancelled', 0.00),
(7, 9, '2024-08-08', 'Completed', 900.00),
(4, 10, '2024-08-09', 'Completed', 750.00),
(2, 13, '2024-08-10', 'Completed', 950.00),
(5, 12, '2024-08-12', 'Processing', 1100.00),
(20, 4, '2024-08-03', 'Completed', 700.00),
(21, 6, '2024-08-04', 'Cancelled', 0.00),
(22, 7, '2024-08-11', 'Completed', 1250.00),
(10, 19, '2024-08-13', 'Completed', 1000.00),
(6, 1, '2024-08-14', 'Completed', 650.00),
(8, 3, '2024-08-01', 'Completed', 1150.00),
(13, 11, '2024-08-02', 'Cancelled', 0.00),
(14, 16, '2024-08-05', 'Completed', 950.00),
(18, 18, '2024-08-07', 'Processing', 1200.00),
(7, 12, '2024-08-09', 'Completed', 1050.00),
(23, 13, '2024-08-02', 'Completed', 700.00),
(3, 14, '2024-08-05', 'Completed', 850.00),
(12, 15, '2024-08-08', 'Completed', 1000.00),
(11, 4, '2024-08-11', 'Processing', 1200.00),
(5, 3, '2024-08-07', 'Completed', 950.00),
(15, 10, '2024-08-12', 'Completed', 1250.00),
(8, 16, '2024-08-03', 'Cancelled', 0.00),
(19, 19, '2024-08-15', 'Completed', 1150.00),
(20, 17, '2024-08-04', 'Processing', 850.00),
(21, 11, '2024-08-07', 'Completed', 900.00),
(22, 13, '2024-08-10', 'Completed', 750.00),
(23, 8, '2024-08-09', 'Completed', 650.00),
(18, 10, '2024-08-13', 'Completed', 1100.00),
(16, 9, '2024-08-14', 'Completed', 950.00),
(14, 12, '2024-08-01', 'Processing', 1000.00),
(15, 19, '2024-08-15', 'Completed', 1200.00);


-- Delivery Updates Table
CREATE TABLE DeliveryUpdates (
    delivery_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    status VARCHAR(20) CHECK (status IN ('Out for delivery', 'Delivered', 'Failed', 'Returned')),
    update_time DATETIME NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
    
);

-- Insert sample data into DeliveryUpdates
INSERT INTO DeliveryUpdates (order_id, status, update_time) VALUES
(1, 'Delivered', '2024-08-01 12:30:00'),
(2, 'Out for delivery', '2024-08-02 13:15:00'),
(3, 'Failed', '2024-08-03 10:45:00'),
(4, 'Delivered', '2024-08-01 14:00:00'),
(5, 'Returned', '2024-08-03 11:30:00'),
(6, 'Out for delivery', '2024-08-04 09:30:00'),
(7, 'Delivered', '2024-08-08 15:00:00'),
(8, 'Failed', '2024-08-02 16:00:00'),
(9, 'Delivered', '2024-08-09 17:00:00'),
(10, 'Out for delivery', '2024-08-01 12:00:00'),
(11, 'Returned', '2024-08-05 13:00:00'),
(12, 'Delivered', '2024-08-07 14:00:00'),
(13, 'Failed', '2024-08-08 09:00:00'),
(14, 'Out for delivery', '2024-08-06 10:30:00'),
(15, 'Delivered', '2024-08-10 11:00:00'),
(16, 'Failed', '2024-08-02 14:30:00'),
(17, 'Delivered', '2024-08-01 15:30:00'),
(18, 'Returned', '2024-08-03 16:00:00'),
(19, 'Out for delivery', '2024-08-05 09:00:00'),
(20, 'Delivered', '2024-08-04 10:30:00'),
(21, 'Failed', '2024-08-11 11:30:00'),
(22, 'Delivered', '2024-08-12 12:00:00'),
(23, 'Out for delivery', '2024-08-13 13:00:00'),
(24, 'Returned', '2024-08-10 14:00:00'),
(25, 'Delivered', '2024-08-14 15:00:00'),
(26, 'Failed', '2024-08-09 16:00:00'),
(27, 'Out for delivery', '2024-08-07 17:00:00'),
(28, 'Returned', '2024-08-12 18:00:00'),
(29, 'Delivered', '2024-08-08 19:00:00'),
(30, 'Failed', '2024-08-11 20:00:00'),
(31, 'Delivered', '2024-08-13 21:00:00'),
(32, 'Out for delivery', '2024-08-14 22:00:00'),
(33, 'Returned', '2024-08-15 23:00:00'),
(34, 'Delivered', '2024-08-01 08:00:00'),
(35, 'Failed', '2024-08-02 09:00:00'),
(36, 'Out for delivery', '2024-08-03 10:00:00'),
(37, 'Delivered', '2024-08-04 11:00:00'),
(38, 'Returned', '2024-08-05 12:00:00'),
(39, 'Failed', '2024-08-06 13:00:00'),
(40, 'Delivered', '2024-08-07 14:00:00'),
(41, 'Out for delivery', '2024-08-08 15:00:00'),
(42, 'Returned', '2024-08-09 16:00:00'),
(43, 'Failed', '2024-08-10 17:00:00'),
(44, 'Delivered', '2024-08-11 18:00:00'),
(45, 'Out for delivery', '2024-08-12 19:00:00'),
(46, 'Returned', '2024-08-13 20:00:00'),
(47, 'Failed', '2024-08-14 21:00:00'),
(48, 'Delivered', '2024-08-15 22:00:00'),
(49, 'Out for delivery', '2024-08-16 23:00:00'),
(50, 'Returned', '2024-08-17 08:00:00');





-- Complaints Table
CREATE TABLE Complaints (
    complaint_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    customer_id INT,
    complaint_text TEXT NOT NULL,
    complaint_date DATETIME NOT NULL,
    status VARCHAR(20) CHECK (status IN ('Pending', 'Resolved', 'Closed')),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Inserting data into Complaints table
INSERT INTO Complaints (order_id, customer_id, complaint_text, complaint_date, status)
VALUES 
(3, 3, 'Order was cancelled without prior notice. Very disappointing.', '2024-08-06 14:00:00', 'Resolved'),
(7, 7, 'Delivery was quick, but the food was not hot enough.', '2024-08-11 15:00:00', 'Pending'),
(9, 9, 'Cancelled order with no explanation provided. Very disappointed.', '2024-08-13 16:00:00', 'Closed'),
(14, 14, 'Food was cold and delivery took too long.', '2024-08-18 17:00:00', 'Pending'),
(16, 16, 'Food quality was good, but delivery was delayed.', '2024-08-20 18:00:00', 'Pending'),
(18, 18, 'Food was fine, but delivery was delayed.', '2024-08-22 19:00:00', 'Resolved'),
(21, 21, 'Food was great, but delivery was delayed.', '2024-08-25 20:00:00', 'Resolved'),
(8, 8, 'Food and service were great, but packaging was not up to the mark.', '2024-08-12 12:00:00', 'Closed'),
(12, 12, 'Exceptional service and food. Will be ordering again soon.', '2024-08-16 13:00:00', 'Closed'),
(5, 5, 'Outstanding service and delicious food. Highly recommend!', '2024-08-08 11:00:00', 'Closed'),
(20, 20, 'Average food quality. Delivery was on time.', '2024-08-24 14:00:00', 'Pending'),
(11, 11, 'Quality was inconsistent this time. Not as good as before.', '2024-08-15 09:00:00', 'Resolved'),
(13, 13, 'Food was good but the delivery was slightly delayed.', '2024-08-17 10:00:00', 'Closed'),
(15, 15, 'Fantastic experience! Food was perfect and delivery was timely.', '2024-08-19 08:00:00', 'Closed'),
(19, 19, 'Excellent food and timely delivery. Highly recommended.', '2024-08-23 07:00:00', 'Closed'),
(23, 23, 'Good food and timely delivery. Will order again.', '2024-08-27 21:00:00', 'Closed');


-- Feedback Table
CREATE TABLE Feedback (
    feedback_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    customer_id INT,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    comments TEXT NULL,
    feedback_date DATETIME NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Inserting data into Feedback table
INSERT INTO Feedback (order_id, customer_id, comments, rating, feedback_date)
VALUES 
(1, 1, 'Food was great, and the delivery was on time. Very satisfied!', 5, '2024-08-02'),
(2, 2, 'Good food but the delivery took longer than expected.', 4, '2024-08-05'),
(3, 3, 'Order was cancelled without prior notice. Very disappointing.', 1, '2024-08-06'),
(4, 4, 'Excellent food quality and timely delivery. Will definitely order again.', 5, '2024-08-07'),
(5, 5, 'Outstanding service and delicious food. Highly recommend!', 5, '2024-08-08'),
(6, 6, 'Food was good but the packaging was not up to the mark.', 3, '2024-08-10'),
(7, 7, 'Delivery was quick, but the food was not hot enough.', 2, '2024-08-11'),
(8, 8, 'Food and service were great. Will definitely order again!', 5, '2024-08-12'),
(9, 9, 'Cancelled order with no explanation provided. Very disappointed.', 1, '2024-08-13'),
(10, 10, 'Timely delivery and good food. Satisfied with the order.', 4, '2024-08-14'),
(11, 11, 'Quality was inconsistent this time. Not as good as before.', 3, '2024-08-15'),
(12, 12, 'Exceptional service and food. Will be ordering again soon.', 5, '2024-08-16'),
(13, 13, 'Food was good but the delivery was slightly delayed.', 4, '2024-08-17'),
(14, 14, 'Food was cold and delivery took too long.', 2, '2024-08-18'),
(15, 15, 'Fantastic experience! Food was perfect and delivery was timely.', 5, '2024-08-19'),
(16, 16, 'Food quality was good, but delivery was delayed.', 3, '2024-08-20'),
(17, 17, 'Very satisfied with both food and service.', 4, '2024-08-21'),
(18, 18, 'Food was fine, but delivery was delayed.', 3, '2024-08-22'),
(19, 19, 'Excellent food and timely delivery. Highly recommended.', 5, '2024-08-23'),
(20, 20, 'Average food quality. Delivery was on time.', 3, '2024-08-24'),
(21, 21, 'Food was great, but delivery was delayed.', 4, '2024-08-25'),
(22, 22, 'Food was delivered on time and was delicious.', 5, '2024-08-26'),
(23, 23, 'Good food and timely delivery. Will order again.', 4, '2024-08-27'),
(24, 1, 'Delicious food and fast delivery. Very happy with the service.', 5, '2024-08-03'),
(25, 2, 'Food was good, but delivery took longer than expected.', 4, '2024-08-04'),
(26, 3, 'Order was acceptable but could have been better.', 3, '2024-08-07'),
(27, 4, 'Great food and timely delivery. Very satisfied.', 5, '2024-08-08'),
(28, 5, 'Perfect meal and prompt delivery. Very satisfied!', 5, '2024-08-09'),
(29, 6, 'Food was good, but packaging needs improvement.', 3, '2024-08-10'),
(30, 7, 'Satisfied with the food, but delivery was delayed.', 4, '2024-08-11');


-- Menu Items Table
CREATE TABLE MenuItems (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    restaurant_id INT,
    item_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category VARCHAR(50) NOT NULL,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id)
);

-- Inserting data into MenuItems table
INSERT INTO MenuItems (restaurant_id, item_name, price, category)
VALUES 
-- Spice of India (North Indian)
(1, 'Paneer Butter Masala', 299.00, 'Main Course'),
(1, 'Garlic Naan', 90.00, 'Bread'),
(1, 'Dal Makhani', 250.00, 'Main Course'),
(1, 'Jeera Rice', 120.00, 'Main Course'),
(1, 'Gulab Jamun', 120.00, 'Dessert'),

-- Tandoori Flames (Mughlai)
(2, 'Chicken Tikka', 350.00, 'Appetizer'),
(2, 'Mutton Korma', 400.00, 'Main Course'),
(2, 'Naan', 80.00, 'Bread'),
(2, 'Raita', 90.00, 'Side'),
(2, 'Shahi Tukda', 150.00, 'Dessert'),

-- Biryani House (Hyderabadi)
(3, 'Hyderabadi Biryani', 370.00, 'Main Course'),
(3, 'Mirchi Ka Salan', 250.00, 'Main Course'),
(3, 'Bagara Baingan', 220.00, 'Main Course'),
(3, 'Khubani Ka Meetha', 150.00, 'Dessert'),
(3, 'Dum Ka Kebab', 300.00, 'Appetizer'),

-- Curry Pot (South Indian)
(4, 'Masala Dosa', 150.00, 'Main Course'),
(4, 'Sambar', 80.00, 'Side'),
(4, 'Idli', 70.00, 'Main Course'),
(4, 'Rasam', 60.00, 'Side'),
(4, 'Payasam', 120.00, 'Dessert'),

-- Taste of Punjab (Punjabi)
(5, 'Butter Chicken', 350.00, 'Main Course'),
(5, 'Paneer Tikka', 200.00, 'Appetizer'),
(5, 'Aloo Paratha', 200.00, 'Bread'),
(5, 'Rajma', 220.00, 'Main Course'),
(5, 'Ras Malai', 140.00, 'Dessert'),

-- Royal Biryani (Biryani)
(6, 'Chicken Biryani', 320.00, 'Main Course'),
(6, 'Mutton Biryani', 350.00, 'Main Course'),
(6, 'Hyderabadi Mirchi Ka Salan', 250.00, 'Main Course'),
(6, 'Raita', 90.00, 'Side'),
(6, 'Double Ka Meetha', 150.00, 'Dessert'),

-- Coastal Delight (Seafood)
(7, 'Fish Curry', 350.00, 'Main Course'),
(7, 'Prawn Masala', 400.00, 'Main Course'),
(7, 'Appam', 120.00, 'Bread'),
(7, 'Kerala Parotta', 100.00, 'Bread'),
(7, 'Payasam', 130.00, 'Dessert'),

-- Veggie Delight (Vegetarian)
(8, 'Chole Bhature', 250.00, 'Main Course'),
(8, 'Paneer Tikka', 200.00, 'Appetizer'),
(8, 'Aloo Tikki', 120.00, 'Appetizer'),
(8, 'Dhokla', 100.00, 'Appetizer'),
(8, 'Kheer', 120.00, 'Dessert'),

-- Gujarat Express (Gujarati)
(9, 'Dhokla', 120.00, 'Appetizer'),
(9, 'Undhiyu', 300.00, 'Main Course'),
(9, 'Khandvi', 140.00, 'Appetizer'),
(9, 'Thepla', 150.00, 'Bread'),
(9, 'Shrikhand', 130.00, 'Dessert'),

-- Andhra Spice (Andhra)
(10, 'Andhra Chicken Curry', 350.00, 'Main Course'),
(10, 'Spicy Prawns', 400.00, 'Main Course'),
(10, 'Puliyodarai', 250.00, 'Main Course'),
(10, 'Gutti Vankaya', 220.00, 'Main Course'),
(10, 'Rawa Kesari', 130.00, 'Dessert'),

-- Punjabi Tadka (Punjabi)
(11, 'Amritsari Kulcha', 150.00, 'Bread'),
(11, 'Butter Chicken', 350.00, 'Main Course'),
(11, 'Sarson Da Saag', 270.00, 'Main Course'),
(11, 'Makki Di Roti', 100.00, 'Bread'),
(11, 'Jalebi', 130.00, 'Dessert'),

-- Flavours of Bengal (Bengali)
(12, 'Macher Jhol', 350.00, 'Main Course'),
(12, 'Shorshe Ilish', 400.00, 'Main Course'),
(12, 'Chingri Malai Curry', 350.00, 'Main Course'),
(12, 'Rasgulla', 130.00, 'Dessert'),
(12, 'Sandesh', 120.00, 'Dessert'),

-- South Treat (South Indian)
(13, 'Dosa', 130.00, 'Main Course'),
(13, 'Sambar', 80.00, 'Side'),
(13, 'Vada', 90.00, 'Appetizer'),
(13, 'Curd Rice', 120.00, 'Main Course'),
(13, 'Jaggery Pongal', 130.00, 'Dessert'),

-- The Great Indian Thali (Thali)
(14, 'Vegetarian Thali', 500.00, 'Thali'),
(14, 'Non-Vegetarian Thali', 600.00, 'Thali'),
(14, 'Raita', 90.00, 'Side'),
(14, 'Pulao', 250.00, 'Main Course'),
(14, 'Gulab Jamun', 120.00, 'Dessert'),

-- Rajasthani Rasoi (Rajasthani)
(15, 'Dal Baati Churma', 350.00, 'Main Course'),
(15, 'Gatte Ki Sabzi', 300.00, 'Main Course'),
(15, 'Ker Sangri', 250.00, 'Main Course'),
(15, 'Lassi', 120.00, 'Beverage'),
(15, 'Rajasthan Churma', 130.00, 'Dessert'),

-- Kerala Kitchen (Kerala)
(16, 'Puttu and Kadala Curry', 300.00, 'Main Course'),
(16, 'Appam and Stew', 350.00, 'Main Course'),
(16, 'Meen Curry', 350.00, 'Main Course'),
(16, 'Onam Sadhya', 500.00, 'Thali'),
(16, 'Payasam', 120.00, 'Dessert'),

-- Chaat Junction (Street Food)
(17, 'Pani Puri', 100.00, 'Appetizer'),
(17, 'Bhel Puri', 120.00, 'Appetizer'),
(17, 'Aloo Chaat', 120.00, 'Appetizer'),
(17, 'Sev Puri', 100.00, 'Appetizer'),
(17, 'Dahi Puri', 130.00, 'Appetizer'),

-- Maharashtrian Magic (Maharashtrian)
(18, 'Puran Poli', 150.00, 'Dessert'),
(18, 'Misal Pav', 250.00, 'Main Course'),
(18, 'Vada Pav', 100.00, 'Appetizer'),
(18, 'Pithla Bhakri', 220.00, 'Main Course'),
(18, 'Modak', 140.00, 'Dessert'),

-- Awadhi Zaika (Awadhi)
(19, 'Galouti Kebab', 400.00, 'Appetizer'),
(19, 'Awadhi Biryani', 350.00, 'Main Course'),
(19, 'Murg Musallam', 450.00, 'Main Course'),
(19, 'Roomali Roti', 100.00, 'Bread'),
(19, 'Shahi Tukda', 150.00, 'Dessert'),

-- Bombay Bhel (Street Food)
(20, 'Bhel Puri', 120.00, 'Appetizer'),
(20, 'Pani Puri', 100.00, 'Appetizer'),
(20, 'Dahi Puri', 130.00, 'Appetizer'),
(20, 'Sev Puri', 100.00, 'Appetizer'),
(20, 'Aloo Tikki Chaat', 150.00, 'Appetizer');

--




-- Order Items Table
CREATE TABLE OrderItems (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    item_id INT,
    quantity INT NOT NULL CHECK (quantity > 0),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (item_id) REFERENCES MenuItems(item_id)
);

-- Insert data into OrderItems table

-- Example data assuming the following item IDs exist in MenuItems:
-- 1: Paneer Butter Masala
-- 2: Garlic Naan
-- 3: Biryani
-- 4: Raita
-- 5: Tandoori Chicken
-- 6: Naan
-- 7: Chicken Curry
-- 8: Salad
-- 9: Masala Dosa
-- 10: Butter Chicken
-- 11: Idli
-- 12: Vada
-- 13: Kachori
-- 14: Chole Bhature
-- 15: Dosa
-- 16: Pakora
-- 17: Chicken Kebab
-- 18: Pulao
-- 19: Veg Biryani
-- 20: Prawn Curry
-- 21: Fish Curry
-- 22: Rajma
-- 23: Palak Paneer

INSERT INTO OrderItems (order_id, item_id, quantity) VALUES
-- Order 1 (750.00)
(1, 1, 2),  -- 2 quantities of Paneer Butter Masala
(1, 2, 3),  -- 3 quantities of Garlic Naan

-- Order 2 (600.00)
(2, 3, 1),  -- 1 quantity of Biryani
(2, 4, 2),  -- 2 quantities of Raita

-- Order 3 (0.00) - Cancelled
(3, 5, 4),  -- 4 quantities of Tandoori Chicken
(3, 6, 2),  -- 2 quantities of Naan

-- Order 4 (850.00)
(4, 7, 3),  -- 3 quantities of Chicken Curry
(4, 8, 2),  -- 2 quantities of Salad

-- Order 5 (1200.00)
(5, 9, 4),  -- 4 quantities of Masala Dosa
(5, 10, 2), -- 2 quantities of Butter Chicken

-- Order 6 (500.00) - Processing
(6, 11, 5), -- 5 quantities of Idli
(6, 12, 3), -- 3 quantities of Vada

-- Order 7 (950.00)
(7, 13, 2), -- 2 quantities of Kachori
(7, 14, 3), -- 3 quantities of Chole Bhature

-- Order 8 (650.00)
(8, 15, 1), -- 1 quantity of Dosa
(8, 16, 4), -- 4 quantities of Pakora

-- Order 9 (0.00) - Cancelled
(9, 17, 2), -- 2 quantities of Chicken Kebab
(9, 18, 1), -- 1 quantity of Pulao

-- Order 10 (900.00)
(10, 19, 3), -- 3 quantities of Veg Biryani
(10, 20, 2), -- 2 quantities of Prawn Curry

-- Order 11 (800.00) - Processing
(11, 21, 3), -- 3 quantities of Fish Curry
(11, 22, 4), -- 4 quantities of Rajma

-- Order 12 (1100.00)
(12, 23, 2), -- 2 quantities of Palak Paneer
(12, 1, 4),  -- 4 quantities of Paneer Butter Masala

-- Order 13 (950.00)
(13, 3, 2),  -- 2 quantities of Biryani
(13, 4, 2),  -- 2 quantities of Raita

-- Order 14 (1250.00)
(14, 5, 3),  -- 3 quantities of Tandoori Chicken
(14, 6, 4),  -- 4 quantities of Naan

-- Order 15 (1300.00)
(15, 7, 5),  -- 5 quantities of Chicken Curry
(15, 8, 3),  -- 3 quantities of Salad

-- Order 16 (850.00) - Processing
(16, 9, 2),  -- 2 quantities of Masala Dosa
(16, 10, 3), -- 3 quantities of Butter Chicken

-- Order 17 (800.00)
(17, 11, 4), -- 4 quantities of Idli
(17, 12, 2), -- 2 quantities of Vada

-- Order 18 (1250.00)
(18, 13, 3), -- 3 quantities of Kachori
(18, 14, 2), -- 2 quantities of Chole Bhature

-- Order 19 (0.00) - Cancelled
(19, 15, 1), -- 1 quantity of Dosa
(19, 16, 2), -- 2 quantities of Pakora

-- Order 20 (700.00)
(20, 17, 2), -- 2 quantities of Chicken Kebab
(20, 18, 1), -- 1 quantity of Pulao

-- Order 21 (0.00) - Cancelled
(21, 19, 2), -- 2 quantities of Veg Biryani
(21, 20, 1), -- 1 quantity of Prawn Curry

-- Order 22 (1250.00)
(22, 21, 3), -- 3 quantities of Fish Curry
(22, 22, 4), -- 4 quantities of Rajma

-- Order 23 (700.00)
(23, 23, 2), -- 2 quantities of Palak Paneer
(23, 1, 3);  -- 3 quantities of Paneer Butter Masala





-- Payment Table
CREATE TABLE Payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    payment_date DATETIME NOT NULL,
    amount_paid DECIMAL(10, 2) NOT NULL,
    payment_method VARCHAR(50) CHECK (payment_method IN ('Credit Card', 'Debit Card', 'UPI', 'Cash on Delivery')),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Insert data into Payment table

-- Example data assuming the following payments are made:
INSERT INTO Payment (order_id, payment_date, amount_paid, payment_method) VALUES
-- Order 1 (750.00)
(1, '2024-08-01', 750.00, 'Credit Card'),

-- Order 2 (600.00)
(2, '2024-08-02', 600.00, 'Debit Card'),

-- Order 3 (0.00) - Cancelled, no payment
(3, '2024-08-04', 0.00, 'Cash on Delivery'),

-- Order 4 (850.00)
(4, '2024-08-01', 850.00, 'UPI'),

-- Order 5 (1200.00)
(5, '2024-08-03', 1200.00, 'Credit Card'),

-- Order 6 (500.00) - Processing
(6, '2024-08-06', 500.00, 'Debit Card'),

-- Order 7 (950.00)
(7, '2024-08-03', 950.00, 'Credit Card'),

-- Order 8 (650.00)
(8, '2024-08-02', 650.00, 'UPI'),

-- Order 9 (0.00) - Cancelled, no payment
(9, '2024-08-08', 0.00, 'Cash on Delivery'),

-- Order 10 (900.00)
(10, '2024-08-01', 900.00, 'Credit Card'),

-- Order 11 (800.00) - Processing
(11, '2024-08-06', 800.00, 'UPI'),

-- Order 12 (1100.00)
(12, '2024-08-10', 1100.00, 'Credit Card'),

-- Order 13 (950.00)
(13, '2024-08-04', 950.00, 'Debit Card'),

-- Order 14 (1250.00)
(14, '2024-08-05', 1250.00, 'UPI'),

-- Order 15 (1300.00)
(15, '2024-08-06', 1300.00, 'Credit Card'),

-- Order 16 (850.00) - Processing
(16, '2024-08-02', 850.00, 'Debit Card'),

-- Order 17 (800.00)
(17, '2024-08-01', 800.00, 'Credit Card'),

-- Order 18 (1250.00)
(18, '2024-08-05', 1250.00, 'UPI'),

-- Order 19 (0.00) - Cancelled, no payment
(19, '2024-08-03', 0.00, 'Cash on Delivery'),

-- Order 20 (700.00)
(20, '2024-08-04', 700.00, 'Debit Card'),

-- Order 21 (0.00) - Cancelled, no payment
(21, '2024-08-11', 0.00, 'Cash on Delivery'),

-- Order 22 (1250.00)
(22, '2024-08-11', 1250.00, 'Credit Card'),

-- Order 23 (700.00)
(23, '2024-08-09', 700.00, 'UPI');


-- Delivery Partners Table
CREATE TABLE DeliveryPartners (
    partner_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) UNIQUE NOT NULL,
    city VARCHAR(50) NOT NULL
);

INSERT INTO DeliveryPartners (name, phone_number, city) VALUES
('Amit Sharma', '9876543210', 'Mumbai'),
('Ravi Kumar', '9123456789', 'Delhi'),
('Priya Patel', '9234567890', 'Bengaluru'),
('Suresh Reddy', '9345678901', 'Hyderabad'),
('Anita Desai', '9456789012', 'Chennai'),
('Rajesh Gupta', '9567890123', 'Kolkata'),
('Sonia Agarwal', '9678901234', 'Pune'),
('Vikram Singh', '9789012345', 'Ahmedabad'),
('Sneha Iyer', '9890123456', 'Jaipur'),
('Kiran Mehta', '9901234567', 'Surat'),
('Deepak Joshi', '9912345678', 'Kanpur'),
('Reena Rao', '9923456789', 'Lucknow'),
('Mohit Saini', '9934567890', 'Nagpur'),
('Nisha Verma', '9945678901', 'Indore'),
('Arun Kumar', '9956789012', 'Coimbatore'),
('Ritika Sharma', '9967890123', 'Vadodara'),
('Ashok Patel', '9978901234', 'Bhubaneswar'),
('Meera Gupta', '9989012345', 'Trivandrum'),
('Sunil Kumar', '9990123456', 'Amritsar'),
('Neha Singh', '9001234567', 'Dehradun'),
('Raj Kumar', '9012345678', 'Mysore'),
('Pooja Mehta', '9023456789', 'Agra'),
('Ajay Verma', '9034567890', 'Gurgaon'),
('Nitin Yadav', '9045678901', 'Chandigarh'),
('Tanvi Agarwal', '9056789012', 'Raipur'),
('Gaurav Sharma', '9067890123', 'Ranchi'),
('Divya Iyer', '9078901234', 'Jodhpur'),
('Sanjay Patel', '9089012345', 'Udaipur'),
('Aarti Rao', '9090123456', 'Faridabad'),
('Rohit Mehta', '9101234567', 'Haridwar'),
('Anil Reddy', '9112345678', 'Gwalior'),
('Shilpa Desai', '9123486789', 'Guntur'),
('Kavita Joshi', '9134567890', 'Mangalore');


-- Order Delivery Table
CREATE TABLE OrderDelivery (
    order_delivery_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    partner_id INT,
    delivery_time DATETIME NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (partner_id) REFERENCES DeliveryPartners(partner_id)
);

-- Insert data into OrderDelivery with randomly assigned partner_id between 34 and 66
INSERT INTO OrderDelivery (order_id, partner_id, delivery_time) VALUES
(1, 4, '2024-08-21 10:30:00'),
(2, 5, '2024-08-21 11:00:00'),
(3, 2, '2024-08-21 11:30:00'),
(4, 4, '2024-08-21 12:00:00'),
(5, 6, '2024-08-21 12:30:00'),
(6, 6, '2024-08-21 13:00:00'),
(7, 3, '2024-08-21 13:30:00'),
(8, 6, '2024-08-21 14:00:00'),
(9, 5, '2024-08-21 14:30:00'),
(10, 9, '2024-08-21 15:00:00'),
(11, 1, '2024-08-21 15:30:00'),
(12, 7, '2024-08-21 16:00:00'),
(13, 3, '2024-08-21 16:30:00'),
(14, 4, '2024-08-21 17:00:00'),
(15, 2, '2024-08-21 17:30:00'),
(16, 5, '2024-08-21 18:00:00'),
(17, 12, '2024-08-21 18:30:00'),
(18, 8, '2024-08-21 19:00:00'),
(19, 13, '2024-08-21 19:30:00'),
(20, 12, '2024-08-21 20:00:00'),
(21, 14, '2024-08-22 10:30:00'),
(22, 18, '2024-08-22 11:00:00'),
(23, 2, '2024-08-22 11:30:00'),
(24, 4, '2024-08-22 12:00:00'),
(25, 10, '2024-08-22 12:30:00'),
(26, 16, '2024-08-22 13:00:00'),
(27, 13, '2024-08-22 13:30:00'),
(28, 16, '2024-08-22 14:00:00'),
(29, 5, '2024-08-22 14:30:00'),
(30, 9, '2024-08-22 15:00:00'),
(31, 1, '2024-08-22 15:30:00'),
(32, 7, '2024-08-22 16:00:00'),
(33, 3, '2024-08-22 16:30:00'),
(34, 4, '2024-08-22 17:00:00'),
(35, 2, '2024-08-22 17:30:00'),
(36, 7, '2024-08-22 18:00:00'),
(37, 6, '2024-08-22 18:30:00'),
(38, 8, '2024-08-22 19:00:00'),
(39, 4, '2024-08-22 19:30:00'),
(40, 2, '2024-08-22 20:00:00');

