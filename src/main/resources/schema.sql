CREATE TABLE CUSTOMERS (
                           id SERIAL PRIMARY KEY,
                           name VARCHAR(255) NOT NULL,
                           surname VARCHAR(255) NOT NULL,
                           age INT,
                           phone_number VARCHAR(15)
);

CREATE TABLE ORDERS (
                        id SERIAL PRIMARY KEY,
                        date DATE NOT NULL,
                        customer_id INT,
                        product_name VARCHAR(255) NOT NULL,
                        amount INT,
                        FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(id)
);