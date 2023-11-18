-- Car Vin Table Values
INSERT INTO car_vin (make, model, year_)
VALUES ('ford', 'fusion', 2021);

INSERT INTO var_vin (make, model, year_)
VALUES ('toyota', '4runner', 2019);

INSERT INTO car_vin (make, model, year_)
VALUES ('toyota', 'tacoma', 2024);

INSERT INTO car_vin (make, model, year_)
VALUES ('toyota', 'rav4', 2024);

INSERT INTO car_vin (make, model, year_)
values ('volvo', 'xc90', 2019);

INSERT INTO car_vin (make, model, year_)
values ('volkswagen', 'golf', 2010);

-- Salesperson Table Values
INSERT INTO salesperson (sales_name, address)
VALUES ('Merriadoc Brandybuck', '2571 Brandywine Bridge, Buckland 84625');

INSERT INTO salesperson (sales_name, address)
VALUES ('Peregrine Took', '1934 Underhill Way, Bree 84269');

-- Mechanic Table Values
INSERT INTO mechanic (mechanic_name, address)
VALUES ('Samwise Gamgee', '8253 Oak St Hobbiton, Shire 12345');

INSERT INTO mechanic (mechanic_name, address)
VALUES ('Frodo Baggins', '3859 Bag End Hobbiton, Shire 12345');

-- Parts Inventory Table Values
INSERT INTO parts_inventory (part_name, part_price, quantity)
VALUES ('transmission', 7500, 3);

INSERT INTO parts_inventory (part_name, part_price, quantity)
VALUES ('engine', 6575, 2);

INSERT INTO parts_inventory (part_name, part_price, quantity)
VALUES ('radiator', 2500, 5);

-- New Car Inventory Table Values
INSERT INTO new_car_inventory (price, vin)
VALUES (46225, 3);

INSERT INTO new_car_inventory (price, vin)
VALUES (36550, 4);

-- Used Car Inventory Table Values
INSERT INTO used_car_inventory (price, mileage, vin)
VALUES (6540, 49000, 5);

INSERT INTO used_car_inventory (price, mileage, vin)
VALUES (9250, 60000, 6);


-- Customer Table Values
INSERT INTO customer (customer_name, vin, address)
VALUES ('Gandalf The_Grey', 1, '8392 Wandering Way, Nowhere 46523');

INSERT INTO customer (customer_name, vin, address)
VALUES ('Elrond Of_Rivendale', 2, '9248 Riverside Dr, Rivendale 87465');

INSERT INTO customer (customer_name, vin, address)
values ('Tom Bombadil', 3, '4872 Willow Ct, Old Forest 64235');

INSERT INTO customer (customer_name, vin, address)
values ('Sauruman The_White', 4, '2935 Tower Way, Orthanc 95312');

-- Sales Invoice Table Values
insert into sales_invoice (customer_id, salesperson_id, new_car_id, used_car_id)
values (4, 2, 1, null);

insert into sales_invoice (customer_id, salesperson_id, new_car_id, used_car_id)
values (5, 1, 2, null);

insert into sales_invoice (customer_id, salesperson_id, new_car_id, used_car_id)
values (1, 1, null, 1);

insert into sales_invoice (customer_id, salesperson_id, new_car_id, used_car_id)
values (2, 2, null, 2);

-- Service Options Table Values
INSERT INTO service_options (service_name, labor_cost)
VALUES ('engine flush', 60);

INSERT INTO service_options (service_name, labor_cost)
VALUES ('transmission flush', 80);

INSERT INTO service_options (service_name, labor_cost)
VALUES ('engine install', 2000);

INSERT INTO service_options (service_name, labor_cost)
VALUES ('transmission install', 2500);

INSERT INTO service_options (service_name, labor_cost)
VALUES ('radiator install', 1525);

-- Service Records Table Values
INSERT INTO service_records (vin, customer_id, service_date, mechanic_id, make, model, year_, part_no, labor_id)
VALUES (2, 2, 2023-11-01, 1, 'honda', 'accord', 2003, 1, 4)

INSERT INTO service_records (vin, customer_id, service_date, mechanic_id, make, model, year_, part_no, labor_id)
VALUES (3, 4, 2023-11-03, 2, 'kia', 'carnival', 2023, 2, 3)

-- Service Invoice Table Values
insert into service_invoice (customer_id, mechanic_id, service_id)
values (2, 1, 1);

insert into service_invoice (customer_id, mechanic_id, service_id)
values (4, 2, 2);
