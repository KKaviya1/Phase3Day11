create database CustsDb
use CustsDb

create table Customer
(CustomerId int primary key,
CustomerName nvarchar(50),
CustomerCity nvarchar(50),
CustomerODLimit float)

insert into Customer values (1,'Sam','Delhi',98000.50)
insert into Customer values (2,'Raj','Pune',76000.75)
insert into Customer values (3,'Mahi','Delhi',98000.45)
insert into Customer values (4,'Gagan','Trichy',76000.65)
insert into Customer values (5,'Shilpa','Chennai',85000.75)
insert into Customer values (11,'Shruthi','Noida',84000.25)

select * from Customer

insert into Customer values (15,'Shalu','Chennai',45000.50)
insert into Customer values (12,'Ravi','Pune',36000.75)
insert into Customer values (13,'Mani','Delhi',91000.45)
insert into Customer values (14,'jagan','Trichy',56000.65)
insert into Customer values (16,'Shree','Pondicherry',45000.75)
insert into Customer values (17,'Shiva','Noida',34000.25)
