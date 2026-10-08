-- create schema for B&B database

CREATE DATABASE IF NOT EXISTS bed_and_breakfast;
USE bed_and_breakfast;

-- create guest table
CREATE TABLE guest(
	guest_id INT AUTO_INCREMENT,
    fname VARCHAR(25) NOT NULL,
    lname VARCHAR(45) NOT NULL,
    email VARCHAR(55) UNIQUE NOT NULL,
    phone VARCHAR (15) NOT NULL,
    address VARCHAR(45) NOT NULL,
    city VARCHAR(25) NOT NULL,
    country VARCHAR(45) NOT NULL,
    postcode VARCHAR(15) NOT NULL,
    VIP bool NOT NULL DEFAULT 0,
    PRIMARY KEY (guest_id)
);


-- create rooms table
CREATE TABLE rooms (
	room_id INT AUTO_INCREMENT,
    room_number INT UNIQUE NOT NULL,
    room_category VARCHAR(20),
		CHECK (room_category IN ('Single', 'Double', 'King')),
    PRIMARY KEY (room_id)
);


-- create bookings table
CREATE TABLE bookings (
	booking_id INT AUTO_INCREMENT,
    guest_id INT NOT NULL,
    room_id INT NOT NULL,
    check_in DATE NOT NULL,
    check_out DATE NOT NULL,
		CONSTRAINT chk_check_out CHECK(check_out > check_in),
    number_of_guests INT NOT NULL,
    nightly_rate DECIMAL(10,2) NOT NULL,
    parking_requested BOOL DEFAULT 0,
    parking_status VARCHAR (45),
		CONSTRAINT chk_parking_status CHECK (parking_status IN('Paid','Pending')),
	nightly_parking_rate DECIMAL(10,2),
    payment_status VARCHAR (45) NOT NULL,
		CONSTRAINT chk_payment_status CHECK (payment_status IN('Paid','Pending')),
	payment_method VARCHAR (45),
		CONSTRAINT chk_payment_method CHECK (payment_method IN('Card','Cash')),
	payment_terms VARCHAR (45) NOT NULL,
		CONSTRAINT chk_payment_terms CHECK (payment_terms IN('Pay at property','Pay in advance')),
    PRIMARY KEY (booking_id),
    CONSTRAINT fk_bookings_guest FOREIGN KEY (guest_id) REFERENCES guest (guest_id),
    CONSTRAINT fk_bookings_rooms FOREIGN KEY (room_id) REFERENCES rooms (room_id)
);

