
CREATE TABLE List1 (
Name varchar(30),
Reg_No varchar(30),
Courses varchar(30),
Course_code int,
Offered_By varchar(30)
);
Insert into List1 Values
 ('Ali', 1 , 'DIP' , 1001 , 'Mr.A' );
 Insert into List1 Values
 ('Basit', 02 , 'DBMS' , 1002 , 'Mr.X' );
 Insert into List1 Values
 ('Akram', 03 , 'OS' , 1003 , 'Mr.Y' );
 Insert into List1 Values
 ('Asad', 04 , 'DBMS' , 1002 , 'Mr.X' );
 Insert into List1 Values
 ('Zeeshan', 05 , 'DIP' , 1001 , 'Mr.A' );
 Insert into List1 Values
 ('Muneer', 06 , 'OS' , 1003 , 'Mr.Y' );
 Insert into List1 Values
 ('Shafqat', 07 , 'NM' , 1004 , 'Mr.H' );
 Insert into List1 Values
 ('Ahsan', 08 , 'OS' , 1003 , 'Mr.Y' );
 Insert into List1 (Name , Reg_No , Courses) Values
 ('Ikram' , 09 , 'DIP');
 Insert into List1 (Name , Reg_No) Values
 ('Hassan' , 10 );

 Select * From List1

UPDATE List1 
SET Course_code= 1001, Offered_By='Mr.A' 
WHERE Name='Ikram' AND Reg_No= 09 

UPDATE List1 
SET Courses= 'DSP' , Course_code= 1005 , Offered_By='Mr.Z' 
WHERE Name='Hassan' AND Reg_No= 10 


DELETE FROM List1
WHERE Name= 'Akram' 
DELETE FROM List1
WHERE Name= 'Ahsan' 
DELETE FROM List1
WHERE Course_code= 1001

Select Distinct Courses, Course_code, Offered_By From List1

SELECT * FROM List1
ORDER BY Name DESC 
