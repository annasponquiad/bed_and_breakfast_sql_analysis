-- persist data to bed_and_breakfast database
USE bed_and_breakfast;

-- persisting data to guest table

INSERT INTO guest (fname, lname, email, phone, address, city, country, postcode, VIP)
VALUE 	('Anna', 'Banana', 'annabanana@gmail.com', '011111111', '41 here street', 'London', 'United Kingdom', '0145268', 0),
		('Bot', 'blot', 'botblot@gmail.com', '0222222222', '78 there street', 'London', 'United Kingdom', '014578', 1),
        ('Cat', 'chat', 'catchat@gmail.com', '033333333', '41 cathouse road', 'Leeds', 'United Kingdom', '059987', 0),
        ('Dit', 'ditly', 'ditditly@gmail.com', '044444444', '7845 yearhk st', 'Paris', 'France', '9855475', 0),
        ('Etc', 'Ekta', 'etcekta@gmail.com', '966587452', 'Rua Parapiu', 'Sorocaba', 'Brazil', '9658742', DEFAULT),
        ('Fub', 'Fluff', 'fubfluff@gmail.com', '9854742698', '854 Calle Major', 'Barcelona', 'Spain', '024589', 1);
	

-- persisting data to rooms table

INSERT INTO rooms (room_number, room_category)
VALUE 	(101, 'Single'),
		(102, 'Double'),
        (103, 'King'),
        (104, 'Double'),
        (105, 'King'),
        (106, 'Single'),
        (107, 'King');


-- persisting data to bookings table

INSERT INTO bookings 
	(guest_id, room_id, check_in, check_out, number_of_guests, nightly_rate, parking_requested, parking_status, nightly_parking_rate, 
    payment_status, payment_method, payment_terms)
VALUE 	(1, 1, '2026-02-28', '2026-03-02', 1, 85, 1, 'Paid', 10, 'Pending', 'Card', 'Pay at property'),
		(2, 2, '2026-03-05', '2026-03-10', 2, 105, 1, 'Pending', 10, 'Pending', NULL, 'Pay at property'),
        (3, 3, '2026-03-05', '2026-03-07', 2, 130, 1, 'Pending', 10, 'Paid', 'Card', 'Pay in advance'),
        (4, 4, '2026-03-06', '2026-03-11', 1, 105, DEFAULT, NULL, NULL, 'Paid', 'Cash', 'Pay in advance'),
        (5, 5, '2026-03-10', '2026-03-16', 2, 130, 1, 'Paid', 10, 'Paid', 'Card', 'Pay in advance'),
        (6, 6, '2026-03-10', '2026-03-12', 1, 85, 0, NULL, NULL, 'Pending', NULL, 'Pay at property'),
        (1, 2, '2026-03-11', '2026-03-14', 2, 105, DEFAULT, NULL, NULL, 'Paid', 'Card', 'Pay in advance'),
        (3, 7, '2026-03-15', '2026-03-19', 2, 130, 1, 'Pending', 10, 'Pending', NULL, 'Pay at property'),
        (4, 4, '2026-03-28', '2026-03-30', 2, 105, 1, 'Pending', 10, 'Paid', 'Card', 'Pay in advance'),
        (6, 4, '2026-03-30', '2026-04-01', 2, 105, 1, 'Pending', 10, 'Pending', NULL, 'Pay at property');
        
