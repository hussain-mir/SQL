 -----LAB 05-----
 ----TABLE 1-----
 CREATE TABLE Persons_Lab5 ( P_Id int , LastName varchar(30) , FirstName varchar(30), Address varchar(30), City varchar(30) )

INSERT INTO Persons_Lab5 VALUES(1,'Hamza','Iqbal','NIAZ HOUSE 93-N' ,'Islamabad')
INSERT INTO Persons_Lab5 VALUES(2,'Ali','Asghar','HOUSE 18-A' ,'Karachi')
INSERT INTO Persons_Lab5 VALUES(3,'Ahmed','Ali','HOUSE-100' ,'Taxila')
SELECT * FROM Persons_Lab5;

 ----TABLE 2------
 CREATE TABLE Orders_Lab5( O_Id int , OrderNo int , P_Id int ) 

INSERT INTO Orders_Lab5 VALUES(1,77895,3)
INSERT INTO Orders_Lab5 VALUES(2,44830,3)
INSERT INTO Orders_Lab5 VALUES(3,32100,2)
INSERT INTO Orders_Lab5 VALUES(4,55550,1)
SELECT * FROM Orders_Lab5

---NOT NULL Constraint--
Alter table Persons_Lab5 ALTER COLUMN P_Id int NOT NULL;
Alter table Persons_Lab5 ALTER COLUMN LastName varchar(30) NOT NULL;
Alter table Orders_Lab5 ALTER COLUMN O_Id int NOT NULL;
---test query--
INSERT INTO Persons_Lab5 (LastName, FirstName , Address , City) VALUES('Malik','Hamza','HOUSE# 5' ,'Islambad')

---NULL Constraint--
ALTER TABLE Persons_Lab5 ADD CONSTRAINT P_ID Unique(P_Id) ;
---test query--
INSERT INTO Persons_Lab5 (P_Id, LastName  ,FirstName , Address , City) VALUES(1, 'Muhammad','Bilal','HOUSE# 5 ' ,'Sargodah');


----primary key--- 
ALTER TABLE Persons_Lab5  ADD PRIMARY KEY (P_ID) ;
---TEST Query---
INSERT INTO Persons_Lab5 (LastName, FirstName , Address , City) VALUES('Muhammad','Bilal','HOUSE# 5 ' ,'Sargodah')

---Foreign key---
ALTER TABLE Orders_Lab5 ADD FOREIGN KEY (P_Id) REFERENCES Persons_Lab5(P_Id);

--SQL CHECK Constraint---
ALTER TABLE Persons_Lab5 ADD CHECK (P_Id>0); 
---test query----
INSERT INTO Persons_Lab5(P_Id, LastName  ,FirstName , Address , City) VALUES(0, 'Muhammad','Bilal','HOUSE# 5 ' ,'Sargodah')


---Query---
ALTER TABLE Persons_Lab5 ADD CONSTRAINT df_City DEFAULT 'RAWALPINDI' FOR City;
---TEST Query--
INSERT INTO Persons_Lab5(P_Id, LastName  ,FirstName , Address ) VALUES(4, 'Muhammad','Bilal','HOUSE# 5 ' )
Select * From Persons_Lab5 