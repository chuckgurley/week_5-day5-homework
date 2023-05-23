
--Create User Function-----------
SELECT addCustomer('Buzz', 'SAW');
SELECT addCustomer('Dick', 'Tracy');
SELECT addCustomer('Tedd', 'Danson');
SELECT addCustomer('Bob', 'Sagot');

SELECT *
FROM customer;
------------salesperson
-- INSERT INTO sales_person(first_name, last_name) VALUES
-- ('Bob','Belcher'),
-- ('Ru','Paul'),
-- ('John','Bonjovi')

-- SELECT *
-- FROM sales_person;

-------mechanic------

INSERT INTO mechanic(first_name, last_name) VALUES
('Montgomery','Scott'),
('Brian','OConner'),
('Carroll', 'Shelby')

SELECT *
From mechanic;

------------sales_car---------------

INSERT INTO "New Car"(new_car_id, make, model,price) VALUES
('h772l908777shj90e','Dodge','Ram',34990.00),
('90ri33uu782395633', 'Ford', 'Mustang GT', 433363.99)


INSERT INTO sales_car(new_car_id, make, model,price) VALUES
('0719038475017452','ford','ranger',34990.00)


SELECT *
FROM new_car;

-------Invoice------
INSERT INTO invoice(customer_id, car_id, salesperson_id) VALUES
(3, 2, 1),
(1, 1, 3)

SELECT *
FROM service;

-----------customer_car---------
INSERT INTO customer_car(customer_car_id, price, make, model, customer_id) VALUES
('17739456387223447', '34287', 'Ford', 'F250',4),
('28jdtytt4023ee432', '64072', 'Ford', 'F350',1),
('dldkjdko478972378', '34204', 'Jeep', 'TrackBoss',3),
('4472oop39es334552', '29736', 'Ford','Focus',2)

SELECT *
FROM customer_car;
