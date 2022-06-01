
create table products(
Productid int,
ProductName varchar(255),
SupplierID int,
CategoryID int,
Unit varchar(255),
Price float
)

insert into products
values(1,'Chais',1,1,'10 boxes x 20 bags',18)
insert into products
values(1,'Chang',1,1,'24 -12 oz bottles',19)
insert into products
values(1,'Aniseed Syrup',1,2,'12-550 ml bottles',10)
insert into products
values(1,'Chief Anton Cajun Seasoning',1,2,'48-6 oz jars',22) 
insert into products
values(1,'Chief Anton Gumbo Mix',1,2,'36 boxes',21.35)

select * from products
---task1
select * from products
where price between 10 and 20
---task2
select * from products
where price between 20 and 30
---task3---
select * from products
where price between 10 and 22 and CategoryID Not like '[123%]'
---task4--
select * from products
where ProductName not between 'C' and 'M'