CREATE DATABASE hotelmanagement;
CREATE TABLE admins(
Nickname varchar(20) unique not null,
Password varchar(20) not null
);

INSERT INTO admins Values ('ammar','king');


Create table accommodation (
Id int primary key auto_increment,
Type varchar(13),
Floor int not null,
Price int not null
);



insert into accommodation values (default,'one-bed-room',1,100);
insert into accommodation values (default,'one-bed-room',1,100);
insert into accommodation values (default,'one-bed-room',1,100);
insert into accommodation values (default,'one-bed-room',2,100);
insert into accommodation values (default,'one-bed-room',2,100);
insert into accommodation values (default,'one-bed-room',2,100);
insert into accommodation values (default,'one-bed-room',2,100);
insert into accommodation values (default,'one-bed-room',3,100);
insert into accommodation values (default,'one-bed-room',3,100);
insert into accommodation values (default,'one-bed-room',3,100);
insert into accommodation values (default,'two-bed-room',1,100);
insert into accommodation values (default,'two-bed-room',1,100);
insert into accommodation values (default,'two-bed-room',2,100);
insert into accommodation values (default,'two-bed-room',2,100);
insert into accommodation values (default,'two-bed-room',3,100);
insert into accommodation values (default,'two-bed-room',3,100);
insert into accommodation values (default,'apartment',1,250);
insert into accommodation values (default,'apartment',2,250);
insert into accommodation values (default,'apartment',3,250);

create table guests(
Id int primary key auto_increment,
Name varchar(20) not null,
Surname varchar(20) not null,
Nickname varchar(20) not null,
Password varchar(20) not null,
Age int not null,
FirstDay Date not null,
IdCardNumb int not null,
Accommodation int,
foreign key (Accommodation) references accommodation (Id)
);



create table archive(
Id int primary key auto_increment,
Name varchar(20) not null,
Surname varchar(20) not null,
Nickname varchar(20) not null,
Password varchar(20) not null,
Age int not null,
IdCardNumb int not null
);


create table services(
Id int primary key auto_increment,
Type varchar(20),
Price int
);
insert into services values (default,'Gym',5);
insert into services values (default, 'Theater', 8);
insert into services values (default, 'Pool' , 15);
insert into services values (default, 'Restaurant',20);
insert into services values (default, 'Spa',15);

create table checks(
serv int not null,
guest int not null,
foreign key (serv) references services (Id),
foreign key (guest) references guests (Id)
);
