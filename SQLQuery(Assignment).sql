create database ContentDB
use ContentdB

create table Articles
(ArticleId int primary key,
Title nvarchar(50),
Content nvarchar(50),
PublishDate datetime)

insert into Articles values (101,'Descriptive','blogs','02/04/2023')
insert into Articles values (206,'Declarative','newsletters','09/11/2023')
insert into Articles values (203,'Interrogative','social media','12/10/2023')
insert into Articles values (108,'Descriptive','Education','07/09/2023')
insert into Articles values (204,'Declarative','emailers','10/14/2023')
insert into Articles values (210,'Interrogative','case studies','12/05/2023')

select * from Articles

