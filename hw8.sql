create table student
(
    id        int auto_increment
        primary key,
    firstname varchar(20) null,
    lastname  varchar(20) null,
    constraint id
        unique (id)
);

create table address
(
    id      int auto_increment
        primary key,
    address varchar(40) null,
    town    varchar(15) null,
    zip     smallint    null,
    studId  int         null,
    constraint id
        unique (id),
    constraint address_ibfk_1
        foreign key (studId) references student (id)
);

create index studId
    on address (studId);

create table class
(
    id      int auto_increment
        primary key,
    name    varchar(10) null,
    subject varchar(10) null,
    studId  int         null,
    constraint id
        unique (id),
    constraint class_ibfk_1
        foreign key (studId) references student (id)
);

create index studId
    on class (studId);


