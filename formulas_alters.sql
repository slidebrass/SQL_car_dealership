-- stored function to add a car to car_vin table
CREATE OR REPLACE FUNCTION add_car(_make VARCHAR, _model VARCHAR, _year INTEGER)
RETURNS VOID
AS $MAIN$
BEGIN
	INSERT INTO car_vin(make, model, year_)
	VALUES (_make, _model, _year);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_car('kia', 'telluride', 2020);

SELECT * FROM car_vin;

-- stored function to add a car to used or new car inventory
CREATE OR REPLACE FUNCTION add_used(_price INTEGER, _mileage INTEGER, _vin INTEGER)
RETURNS VOID
AS $MAIN$
BEGIN
	INSERT INTO used_car_inventory (price, mileage, vin)
	VALUES (_price, _mileage, _vin);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_used (60500, 45000, 7);

SELECT * FROM used_car_inventory;

-- stored function to add a customer to the customer table
CREATE OR REPLACE FUNCTION add_customer(_customer_name VARCHAR, _vin INTEGER, _address VARCHAR)
RETURNS VOID
AS $MAIN$
BEGIN
	INSERT INTO customer(customer_name, vin, address)
	VALUES (_customer_name, _vin, _address);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_customer('Bilbo Baggins', 7, '4625 Underhill Rd Hobbiton, Shire 85263');

SELECT * FROM customer;

-- add fields to service_invoice
ALTER TABLE service_invoice 
ADD labor_cost INTEGER;

ALTER TABLE service_invoice 
ADD part_price INTEGER;

ALTER TABLE service_invoice 
ADD total_cost INTEGER;

ALTER TABLE service_invoice 
ADD part_no INTEGER;

ALTER TABLE service_invoice 
ADD labor_id INTEGER;

-- add labor_id and part_no
UPDATE service_invoice 
SET part_no = 1
WHERE service_id = 1;

UPDATE service_invoice 
SET part_no = 2
WHERE service_id = 2;

UPDATE service_invoice 
SET labor_id = 4
WHERE service_id = 1;

UPDATE service_invoice 
SET labor_id = 3
WHERE service_id = 2;

-- update values for service_invoice
UPDATE service_invoice 
SET labor_cost = 60
WHERE labor_id = 1;

UPDATE service_invoice 
SET labor_cost = 80
WHERE labor_id = 2;

UPDATE service_invoice 
SET labor_cost = 2000
WHERE labor_id = 3;

UPDATE service_invoice 
SET labor_cost = 2500
WHERE labor_id = 4;

UPDATE service_invoice 
SET labor_cost = 1525
WHERE labor_id = 5;

UPDATE service_invoice 
SET part_price = 7500
WHERE part_no = 1;

UPDATE service_invoice 
SET part_price = 6575
WHERE part_no = 2;

UPDATE service_invoice 
SET part_price = 2500
WHERE part_no = 3;

-- update total_cost
UPDATE service_invoice 
SET total_cost = 10000
WHERE service_invoice_no = 1;

UPDATE service_invoice 
SET total_cost = 8575
WHERE service_invoice_no = 2;

-- add sales_invoice columns
ALTER TABLE sales_invoice 
ADD price INTEGER;

-- update price values
UPDATE sales_invoice 
SET price = 46225
WHERE new_car_id = 1;

UPDATE sales_invoice 
SET price = 36550
WHERE new_car_id = 2;

UPDATE sales_invoice 
SET price = 6540
WHERE used_car_id = 1;

UPDATE sales_invoice 
SET price = 9250
WHERE used_car_id = 2;

UPDATE sales_invoice 
SET price = 60500
WHERE used_car_id = 3;