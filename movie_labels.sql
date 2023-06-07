CREATE TABLE customers(
	customer_id serial PRIMARY KEY,
	first_name varchar(20) NOT null,
	last_name varchar(30)NOT null,
	rewards boolean NOT NULL,
	phone int,
	email varchar(50) NOT NULL,
	address varchar(200),
	payment_info varchar(20)
);

CREATE TABLE tickets(
	ticket_number serial PRIMARY KEY,
	theater varchar(10) NOT NULL,
	showtime time NOT NULL,
	seat varchar(10) NOT NULL,
	ticket_price decimal(5,2) NOT NULL,
	ticket_type varchar(20),
	movie_id integer NOT NULL,
	customer_id integer,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE concessions(
	food_id serial PRIMARY KEY,
	food_price decimal(5,2) NOT NULL,
	free_refill boolean NOT NULL,
	customer_id integer,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE movies(
	movie_id serial PRIMARY KEY,
	movie_title varchar(50) NOT NULL,
	released date,
	theater varchar(10),
	showtime time
);
