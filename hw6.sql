create table customers
(
    customerId  int auto_increment
        primary key,
    firstname   varchar(20) null,
    lastname    varchar(20) null,
    phoneNumber varchar(20) null,
    constraint customerId
        unique (customerId)
);

create table orders
(
    orderId    int auto_increment
        primary key,
    customerId int not null,
    productId  int not null,
    constraint orderId
        unique (orderId)
);

create table products
(
    productId int auto_increment
        primary key,
    productD  varchar(20) null,
    constraint productId
        unique (productId)
);
INSERT INTO customers (firstname, lastname, phoneNumber) VALUES ( 'Tom', 'Brady', '4138659842');
INSERT INTO customers (firstname, lastname, phoneNumber) VALUES ( 'Matt', 'Stafford', '5856217893');
INSERT INTO customers (firstname, lastname, phoneNumber) VALUES ( 'Joe', 'Burrow', '4012543417');
INSERT INTO products (productD) VALUES ('Chair');
INSERT INTO products (productD) VALUES ('Table');
INSERT INTO products (productD) VALUES ('Paint');
INSERT INTO products (productD) VALUES ('Brush');
INSERT INTO orders (customerId, productId) values (1, 3);
INSERT INTO orders (customerId, productId) values (2, 1);
INSERT INTO orders (customerId, productId) values (1, 4);
INSERT INTO orders (customerId, productId) values (3, 2);
INSERT INTO orders (customerId, productId) values (2, 2);
INSERT INTO orders (customerId, productId) values (1, 1);

SELECT * from products;
SELECT * from customers;
SELECT * from orders;
SELECT customerId from orders;
SELECT productId from orders;
SELECT productD from products;

