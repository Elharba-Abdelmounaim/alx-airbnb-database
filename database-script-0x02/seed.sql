-- ملف seed.sql

-- إدخال بيانات المستخدمين
INSERT INTO users (first_name, last_name, email, password_hash, phone_number)
VALUES
('John', 'Doe', 'john.doe@example.com', 'hashedpassword123', '123-456-7890'),
('Jane', 'Smith', 'jane.smith@example.com', 'hashedpassword456', '987-654-3210'),
('Alice', 'Johnson', 'alice.johnson@example.com', 'hashedpassword789', '555-123-4567');

-- إدخال بيانات العقارات
INSERT INTO properties (user_id, title, description, price_per_night, location)
VALUES
(1, 'Cozy Apartment in the City Center', 'A small cozy apartment in the heart of the city.', 80.00, 'New York, USA'),
(1, 'Spacious Villa with Ocean View', 'A beautiful villa with a spectacular ocean view.', 250.00, 'Miami, USA'),
(2, 'Luxury Penthouse', 'A luxurious penthouse with modern amenities and breathtaking views.', 500.00, 'Los Angeles, USA'),
(3, 'Quiet Cottage in the Countryside', 'A peaceful cottage in the middle of nature, perfect for a weekend retreat.', 120.00, 'Nashville, USA');

-- إدخال بيانات الحجوزات
INSERT INTO bookings (user_id, property_id, check_in_date, check_out_date, total_price, booking_status)
VALUES
(2, 1, '2025-05-15', '2025-05-20', 400.00, 'confirmed'),
(3, 2, '2025-06-01', '2025-06-05', 1000.00, 'confirmed'),
(1, 3, '2025-07-01', '2025-07-03', 600.00, 'pending'),
(2, 4, '2025-08-10', '2025-08-15', 600.00, 'cancelled');
