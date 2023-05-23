DROP TABLE IF EXISTS mechanic CASCADE;
CREATE TABLE mechanic (
  mechanic_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);

DROP TABLE IF EXISTS service CASCADE;
CREATE TABLE service (
  service_id SERIAL PRIMARY KEY,
  type_of_service VARCHAR(50),
  labor_cost VARCHAR(50)
);

DROP TABLE IF EXISTS service_invoice CASCADE;
CREATE TABLE service_invoice (
  service_invoice_id SERIAL PRIMARY KEY,
  service_name VARCHAR(50),
  labor_cost DECIMAL(10,2),
  date DATE,
  mech_serv VARCHAR(50),
  customer_car_id DECIMAL(10,2)
);



DROP TABLE IF EXISTS "New Car" CASCADE;
CREATE TABLE "New Car" (
  new_car_id SERIAL PRIMARY KEY,
  price DECIMAL(10,2),
  make VARCHAR(50),
  model VARCHAR(30)
);

DROP TABLE IF EXISTS sales_person CASCADE;
CREATE TABLE sales_person (
  sales_person_id SERIAL PRIMARY KEY,
  first_last VARCHAR(50),
  last_name VARCHAR(50)
);

DROP TABLE IF EXISTS dealer_invoice CASCADE;
CREATE TABLE dealer_invoice (
  dealer_invoice SERIAL PRIMARY KEY,
  date DATE,
  total_dealer_invoice DECIMAL(10,2),
  new_car_id VARCHAR(50),
  sales_person_id VARCHAR(50),
  customer_id VARCHAR(50)
);
  FOREIGN KEY (sales_person_id) REFERENCES sales_person(sales_person_id),
  FOREIGN KEY (new_car_id) REFERENCES "New Car"(new_car_id)  
     
);

DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE Customer (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);	
  FOREIGN KEY (customer_id)REFERENCES dealer_invoice(customer_id)   
      
);

DROP TABLE IF EXISTS customer_car CASCADE;
CREATE TABLE customer_car (
  customer_car_id SERIAL PRIMARY KEY,
  price DECIMAL(10,2),
  make VARCHAR(50),
  model VARCHAR(30),	
  customer_id VARCHAR(50)
);	
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (customer_car_id) REFERENCES service_invoice(customer_car_id)    
     
);
DROP TABLE IF EXISTS mech_serv CASCADE;
CREATE TABLE mech_serv (
  mech_serv SERIAL PRIMARY KEY,
  service_id VARCHAR(50),
  mechanic_id VARCHAR(50)
);
	
  FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
  FOREIGN KEY (service_id) REFERENCES service(service_id),
  FOREIGN KEY (mech_serv) REFERENCES service(service_id),
  FOREIGN KEY (mech_serv) REFERENCES service_invoice(mech_serv)  
     

