--Q1.Find the top 5 restaurants with the highest number of orders.

SELECT restaurant,
       COUNT(order_id) AS total_orders
FROM food_delivery
GROUP BY restaurant
ORDER BY total_orders DESC
LIMIT 5;

--Q2.Find the locations with the highest average delivery time.

SELECT city,
       ROUND(AVG(delivery_duration),2) AS average_delivery_time
FROM food_delivery
GROUP BY city
ORDER BY average_delivery_time DESC;

--Q3.Calculate the cancellation percentage for each restaurant.

SELECT restaurant,
       ROUND(
           COUNT(CASE WHEN is_canceled = 1 THEN 1 END) * 100.0
           / COUNT(order_id),
           2
       ) AS cancellation_percentage
FROM food_delivery
GROUP BY restaurant
ORDER BY cancellation_percentage DESC;

--Q4.Compare the average customer rating for: Fast deliveries, Normal deliveries, Delayed deliveries.

SELECT delivery_status,
       ROUND(AVG(customer_rating), 2) AS average_customer_rating
FROM food_delivery
GROUP BY delivery_status
ORDER BY average_customer_rating DESC;

--Q5.Find the top 5 best-performing restaurants that have: At least 20 orders, Good average customer ratings, Low average delivery time.

SELECT restaurant,
       COUNT(order_id) AS total_orders,
       ROUND(AVG(customer_rating), 2) AS average_rating,
       ROUND(AVG(delivery_duration), 2) AS average_delivery_time
FROM food_delivery
GROUP BY restaurant
HAVING COUNT(order_id) >= 20
ORDER BY average_rating DESC,
         average_delivery_time ASC
LIMIT 5;
