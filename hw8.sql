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
    
    
INSERT INTO class (name, subject, studId) values ('ECON111', 'Economics', 1);
INSERT INTO class (name, subject, studId) values ('ECON111', 'Economics', 3);
INSERT INTO class (name, subject, studId) values ('ECON111', 'Economics', 5);
INSERT INTO class (name, subject, studId) values ('ECON111', 'Economics', 7);
INSERT INTO class (name, subject, studId) values ('ECON111', 'Economics', 9);
INSERT INTO class (name, subject, studId) values ('SEC100', 'Computers', 2);
INSERT INTO class (name, subject, studId) values ('SEC100', 'Computers', 4);
INSERT INTO class (name, subject, studId) values ('SEC100', 'Computers', 6);
INSERT INTO class (name, subject, studId) values ('SEC100', 'Computers', 8);
INSERT INTO class (name, subject, studId) values ('SEC100', 'Computers', 10);
INSERT INTO student (firstname, lastname) values ('Tom', 'Brady');
INSERT INTO student (firstname, lastname) values ('Joe', 'Burrow');
INSERT INTO student (firstname, lastname) values ('Josh', 'Allen');
INSERT INTO student (firstname, lastname) values ('Russel', 'Wilson');
INSERT INTO student (firstname, lastname) values ('Aaron', 'Rodgers');
INSERT INTO student (firstname, lastname) values ('Matt', 'Stafford');
INSERT INTO student (firstname, lastname) values ('Cooper', 'Kupp');
INSERT INTO student (firstname, lastname) values ('Odell', 'Beckham');
INSERT INTO student (firstname, lastname) values ('Sean', 'McVay');
INSERT INTO student (firstname, lastname) values ('Matt', 'Gay');
INSERT INTO address (address, town, zip, studId) values ('12 Bucs Ave','Tampa Bay', 11111, 1);
INSERT INTO address (address, town, zip, studId) values ('9 Tiger Ln','Cincinnati', 11111, 2);
INSERT INTO address (address, town, zip, studId) values ('17 Bills Circle','Buffalo', 11111, 3);
INSERT INTO address (address, town, zip, studId) values ('3 Bronco Blvd','Denver', 11111, 4);
INSERT INTO address (address, town, zip, studId) values ('12 Cheese St','Green Bay', 11111, 5);
INSERT INTO address (address, town, zip, studId) values ('9 Hollywood Ave','Los Angelos', 11111, 6);
INSERT INTO address (address, town, zip, studId) values ('10 Hollywood Ave','Los Angelos', 11111, 7);
INSERT INTO address (address, town, zip, studId) values ('3 Hollywood Ave','Los Angelos', 11111, 8);
INSERT INTO address (address, town, zip, studId) values ('0 Hollywood Ave','Los Angelos', 11111, 9);
INSERT INTO address (address, town, zip, studId) values ('1 Hollywood Ave','Los Angelos', 11111, 10);


