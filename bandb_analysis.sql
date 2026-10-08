-- querying the database
USE bed_and_breakfast;

--  retrieve every guest who has made more than one booking, with the highest number of booking listed first

SELECT g.fname AS first_name, g.lname AS last_name, COUNT(*) AS total_bookings 
	FROM guest g
		INNER JOIN bookings b
			ON g.guest_id = b.guest_id
	GROUP BY g.guest_id
		HAVING COUNT(*) > 1
        ORDER BY COUNT(*) DESC;
        
-- retrieve each room number, its category and the total room revenue generated from its bookings, with the highest revenue listed first
 
SELECT r.room_number,
		r.room_category,
		SUM(DATEDIFF(b.check_out, b.check_in) * nightly_rate) AS total_revenue
	FROM rooms r
		INNER JOIN bookings b 
			ON r.room_id = b.room_id
		GROUP BY r.room_id
		ORDER BY total_revenue DESC;
		        
-- Retrieve bookings with outstanding payment, with highest total amount owed listed first

SELECT CONCAT(g.fname, ' ', g.lname) AS guest,
		r.room_number,
		b.check_in,
        DATEDIFF(check_out, check_in) * nightly_rate AS outstanding_payment
	FROM guest g
		INNER JOIN bookings b 
			ON g.guest_id = b.guest_id
		INNER JOIN rooms r 
			ON b.room_id = r.room_id
	WHERE payment_status = 'Pending'
	ORDER BY outstanding_payment DESC;
   
    
-- Retrieve the total value of accommodation by guest and the number of bookings, with the highest-value guests listed first

SELECT  g.guest_id,
		CONCAT(g.fname, ' ', g.lname) AS guest,
        COUNT(*) AS number_bookings_per_guest,	
        SUM(DATEDIFF(check_out, check_in) * nightly_rate) AS total_value_per_guest        
	FROM guest g
		INNER JOIN bookings b 
			ON g.guest_id = b.guest_id
	GROUP BY g.guest_id
    ORDER BY total_value_per_guest DESC;