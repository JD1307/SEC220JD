create table customers
(
    id          int auto_increment
        primary key,
    firstname   varchar(20) null,
    lastname    varchar(20) null,
    phoneNumber varchar(20) null,
    constraint id
        unique (id)
);

create table orders
(
    id         int auto_increment,
    productSku int not null,
    CustomerId int not null,
    primary key (CustomerId, productSku),
    constraint id
        unique (id),
    constraint orders_ibfk_1
        foreign key (CustomerId) references customers (id)
);


