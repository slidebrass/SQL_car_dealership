CREATE TABLE car_vin (
	vin SERIAL not NULL PRIMARY key,
	make VARCHAR(50),
	model VARCHAR(50),
	year_ INTEGER
);

CREATE TABLE salesperson (
	salesperson_id SERIAL not NULL PRIMARY key,
	sales_name VARCHAR(50),
	address VARCHAR(100)
);

CREATE TABLE mechanic (
	mechanic_id  SERIAL not NULL PRIMARY key,
	mechanic_name VARCHAR(50),
	address VARCHAR(100)
);

CREATE TABLE parts_inventory (
	part_no SERIAL not NULL PRIMARY key,
	part_name VARCHAR(50),
	part_price INTEGER,
	quantity INTEGER
);

CREATE TABLE new_car_inventory (
	new_car_id SERIAL not NULL PRIMARY key,
	price INTEGER,
	vin INTEGER not NULL,
	FOREIGN KEY(vin) REFERENCES car_vin(vin)
);

CREATE TABLE used_car_inventory (
	used_car_id SERIAL not NULL PRIMARY key,
	price INTEGER,
	mileage INTEGER,
	vin INTEGER not NULL,
	FOREIGN KEY(vin) REFERENCES car_vin(vin)
);

CREATE TABLE customer (
	customer_id SERIAL not NULL PRIMARY key,
	customer_name VARCHAR(50),
	vin INTEGER not null,
	address VARCHAR(100),
	FOREIGN KEY(vin) REFERENCES car_vin(vin)
);

CREATE TABLE sales_invoice (
	invoice_no SERIAL not NULL PRIMARY key,
	customer_id INTEGER not NULL,
	salesperson_id INTEGER not NULL,
	new_car_id INTEGER not NULL,
	used_car_id INTEGER not NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
	FOREIGN KEY(new_car_id) REFERENCES new_car_inventory(new_car_id),
	FOREIGN KEY(used_car_id) REFERENCES used_car_inventory(used_car_id)
);

CREATE TABLE service_options (
	labor_id SERIAL not NULL PRIMARY key,
	service_name VARCHAR(50),
	labor_cost INTEGER
);

CREATE TABLE service_records (
	service_id SERIAL not NULL PRIMARY key,
	vin INTEGER not NULL,
	customer_id INTEGER not NULL,
	service_date DATE,
	mechanic_id INTEGER not NULL,
	make VARCHAR(50),
	model VARCHAR(50),
	year_ INTEGER,
	part_no INTEGER,
	labor_id INTEGER not NULL,
	FOREIGN KEY(vin) REFERENCES car_vin(vin),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(labor_id) REFERENCES service_options(labor_id),
	FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id),
	FOREIGN KEY(part_no) REFERENCES parts_inventory(part_no)
);

CREATE TABLE service_invoice (
	service_invoice_no SERIAL not NULL PRIMARY key,
	customer_id INTEGER not NULL,
	mechanic_id INTEGER not NULL,
	service_id INTEGER not NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_Id),
	FOREIGN KEY(service_id) REFERENCES service_records(service_id)
);