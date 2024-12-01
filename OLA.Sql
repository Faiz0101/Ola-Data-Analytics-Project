-- ============================
-- Query 1: Retrieve all successful bookings
-- ============================
-- This query retrieves all the bookings with a status of 'Success'.
SELECT * 
FROM bookings 
WHERE Booking_Status = 'Success';

-- ============================
-- Query 2: Find the average ride distance for each vehicle type
-- ============================
-- This query calculates the average ride distance for each vehicle type.
SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance 
FROM bookings 
GROUP BY Vehicle_Type;

-- ============================
-- Query 3: Get the total number of cancelled rides by customers
-- ============================
-- This query counts the number of rides cancelled by customers.
SELECT COUNT(*) 
FROM bookings 
WHERE Booking_Status = 'cancelled by Customer';

-- ============================
-- Query 4: List the top 5 customers who booked the highest number of rides
-- ============================
-- This query retrieves the top 5 customers with the highest number of bookings.
SELECT Customer_ID, COUNT(Booking_ID) as total_rides 
FROM bookings 
GROUP BY Customer_ID 
ORDER BY total_rides DESC 
LIMIT 5;

-- ============================
-- Query 5: Get the number of rides cancelled by drivers due to personal and car-related issues
-- ============================
-- This query counts the rides cancelled by drivers for personal and car-related reasons.
SELECT COUNT(*) 
FROM bookings 
WHERE cancelled_Rides_by_Driver = 'Personal & Car related issue';

-- ============================
-- Query 6: Find the maximum and minimum driver ratings for Prime Sedan bookings
-- ============================
-- This query retrieves the maximum and minimum driver ratings for Prime Sedan vehicle type.
SELECT MAX(Driver_Ratings) as max_rating, MIN(Driver_Ratings) as min_rating 
FROM bookings 
WHERE Vehicle_Type = 'Prime Sedan';

-- ============================
-- Query 7: Retrieve all rides where payment was made using UPI
-- ============================
-- This query retrieves all the bookings where payment was made through UPI.
SELECT * 
FROM bookings 
WHERE Payment_Method = 'UPI';

-- ============================
-- Query 8: Find the average customer rating per vehicle type
-- ============================
-- This query calculates the average customer rating for each vehicle type.
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating 
FROM bookings 
GROUP BY Vehicle_Type;

-- ============================
-- Query 9: Calculate the total booking value of rides completed successfully
-- ============================
-- This query calculates the total booking value of rides where the booking status is 'Success'.
SELECT SUM(Booking_Value) as total_successful_value 
FROM bookings 
WHERE Booking_Status = 'Success';

-- ============================
-- Query 10: List all incomplete rides along with the reason
-- ============================
-- This query retrieves all incomplete rides and the reasons for incompletion.
SELECT Booking_ID, Incomplete_Rides_Reason 
FROM bookings 
WHERE Incomplete_Rides = 'Yes';
