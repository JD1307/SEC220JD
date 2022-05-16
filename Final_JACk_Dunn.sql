create table directors
(
    directorsID int auto_increment,
    first_name  varchar(30) not null,
    last_name   varchar(30) not null,
    primary key (directorsID, first_name, last_name),
    constraint directorsID
        unique (directorsID),
    constraint first_name
        unique (first_name),
    constraint last_name
        unique (last_name)
);

create table movies
(
    title        varchar(30) not null,
    release_year varchar(30) not null,
    genre        varchar(30) not null,
    director     int         not null,
    movieID      int         not null,
    primary key (movieID, title, genre, release_year),
    constraint director
        unique (director),
    constraint genre
        unique (genre),
    constraint release_year
        unique (release_year),
    constraint title
        unique (title),
    constraint movies_ibfk_1
        foreign key (director) references directors (directorsID)
);

create table actors
(
    actorsID   int auto_increment,
    first_name varchar(30) not null,
    last_name  varchar(30) not null,
    movies     int         null,
    primary key (actorsID, first_name, last_name),
    constraint actorsID
        unique (actorsID),
    constraint first_name
        unique (first_name),
    constraint last_name
        unique (last_name),
    constraint actors_ibfk_1
        foreign key (movies) references movies (movieID)
);

create index movies
    on actors (movies);

create table office
(
    officeID      int auto_increment
        primary key,
    titleM        varchar(30) null,
    genreM        varchar(30) null,
    release_yearM varchar(30) null,
    first_nameDir varchar(30) null,
    last_nameDir  varchar(30) null,
    first_nameAct varchar(30) null,
    last_nameAct  varchar(30) null,
    constraint officeID
        unique (officeID),
    constraint office_ibfk_1
        foreign key (titleM) references movies (title),
    constraint office_ibfk_2
        foreign key (genreM) references movies (genre),
    constraint office_ibfk_3
        foreign key (release_yearM) references movies (release_year),
    constraint office_ibfk_4
        foreign key (first_nameDir) references directors (first_name),
    constraint office_ibfk_5
        foreign key (last_nameDir) references directors (last_name),
    constraint office_ibfk_6
        foreign key (first_nameAct) references actors (first_name),
    constraint office_ibfk_7
        foreign key (last_nameAct) references actors (last_name)
);

create index first_nameAct
    on office (first_nameAct);

create index first_nameDir
    on office (first_nameDir);

create index genreM
    on office (genreM);

create index last_nameAct
    on office (last_nameAct);

create index last_nameDir
    on office (last_nameDir);

create index release_yearM
    on office (release_yearM);

create index titleM
    on office (titleM);


