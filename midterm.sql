create table address
(
    id      int auto_increment
        primary key,
    address varchar(40) null,
    town    varchar(15) null,
    zip     smallint    null,
    constraint id
        unique (id)
);

create table class
(
    id            int auto_increment
        primary key,
    class_name    varchar(10) null,
    class_subject varchar(10) null,
    constraint id
        unique (id)
);

create table grade
(
    id        int auto_increment
        primary key,
    grade_num int null,
    constraint id
        unique (id)
);

create table student
(
    id         int auto_increment
        primary key,
    firstname  varchar(20) null,
    lastname   varchar(20) null,
    grade_id   int         null,
    address_id int         null,
    constraint id
        unique (id),
    constraint student_ibfk_1
        foreign key (grade_id) references grade (id),
    constraint student_ibfk_2
        foreign key (address_id) references address (id)
);

create table roster
(
    id         int auto_increment
        primary key,
    class_id   int null,
    student_id int null,
    constraint id
        unique (id),
    constraint roster_ibfk_1
        foreign key (class_id) references class (id),
    constraint roster_ibfk_2
        foreign key (student_id) references student (id)
);

create index class_id
    on roster (class_id);

create index student_id
    on roster (student_id);

create index address_id
    on student (address_id);

create index grade_id
    on student (grade_id);


