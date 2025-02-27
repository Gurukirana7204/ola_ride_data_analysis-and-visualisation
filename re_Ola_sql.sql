
Use Ola;
select * from bangalore_ride_data

#1. Retrieve all successful bookings:


SELECT * FROM bangalore_ride_data
WHERE Booking_Status = 'Success';

#2. Find the average ride distance for each vehicle type:

SELECT Vehicle_Type, AVG(Ride_Distance)
as avg_distance FROM bangalore_ride_data
GROUP BY Vehicle_Type;

#3. Get the total number of cancelled rides by customers:

SELECT COUNT(*) FROM bangalore_ride_data
WHERE Booking_status = 'Cancelled'

#4. List the top 5 customers who booked the highest number of rides:

SELECT  TOP 5 Customer_ID, COUNT(Booking_ID) as total_rides
FROM bangalore_ride_data
GROUP BY Customer_ID
ORDER BY total_rides;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:

Create View Rides_canceled As

SELECT COUNT(*) FROM bangalore_ride_data as Rides_canceled_by_P_and_C_issues
WHERE canceled_Rides_by_Driver = 'Personal & Car related issue';

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM bangalore_ride_data WHERE Vehicle_Type = 'Prime Sedan';

#7. Retrieve all rides where payment was made using Online Payment

SELECT * FROM bangalore_ride_data
WHERE Payment_Method = 'Online Payment';

#8. Find the average customer rating per vehicle type:

SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
FROM bangalore_ride_data
GROUP BY Vehicle_Type;

#9. Calculate the total booking value of rides completed successfully:

SELECT SUM(Booking_Value) as total_successful_ride_value
FROM bangalore_ride_data
WHERE Booking_Status = 'Success';

#10. List all incomplete rides along with the reason:

SELECT Booking_ID, Incomplete_Rides_Reason
FROM bangalore_ride_data
WHERE Incomplete_Rides = '1';