
CREATE TABLE Customers1(
CustomerID int ,
CustomerName varchar(30) ,
ContactName varchar(30) , 
Address varchar(30) , 
City varchar (30) , 
PostalCode int ,
Country varchar (30));

INSERT INTO Customers1 VALUES( 1, 'Alferds Futterkiste' , 'Maria Anders' , 'Obere Str. 5', 'Berlin' , 12209 , 'Germany');
INSERT INTO Customers1 VALUES( 2, 'Ana Turjillo heladose' , 'Ana Trujillo' , 'Avda. de la constitucion 2222', 'Mexico D.F.' , 05021 , 'Mexico');
INSERT into Customers1 VALUES(3, 'Antonio Moreno Taqueria','Antonio Moreno','Metaderos 2312','Mexico D.F',05023,'Mexico')
INSERT into Customers1 VALUES(4, 'Around the Horn','Thomas Hardy','120 Hanover','London', 4100,'UK')
INSERT into Customers1 VALUES(5, 'Berglund snabbkop','Christina Berglund','Berguvsagen','Lulea',5100,'Sweden')
Select *From Customers1

---Task1---
select * from Customers1
where Country like 's%'
---Task2---
select * from Customers1
where CustomerName like '%s'
---Task3---
select * from Customers1
where city like '%ndo%'
---Task4---
select * from Customers1
where city not like '%ndo%'
---Task5---
select * from Customers1
where Country IN('Germany','Sweden')
---Task6---
select * from Customers1
where city in('paris','london')
---Task7---
select * from Customers1
where city='paris' or City='london'