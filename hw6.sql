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


