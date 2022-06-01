Create table list3(
Name varchar(255),
Reg_No int,
Courses varchar(255),
Course_code int,
Offered_By varchar(255)
)
insert into list3
values('Ali',01,'DIP',1001,'MR.A')
insert into list3
values('Basit',02,'DBMS',1002,'MR.X')
insert into list3
values('Akram',03,'OS',1003,'MR.Y')
insert into list3
values('Asad',04,'DBMS',1002,'MR.X')
insert into list3
values('zeeshan',05,'DIP',1001,'MR.A')
insert into list3(Name,Reg_No,Courses,Offered_By)
values('Muneer',06,'OS','MR.Y')
insert into list3
values('Shafqat',07,'NM',1004,'MR.H')
insert into list3
values('Ahsan',08,'OS',1003,'MR.Y')
insert into list3(Name,Reg_No,Courses,Offered_By)
values('Ikram',9,'DIP','Mr.A')
insert into list3(Name,Reg_No,Courses)
values('Hassan',10,'DSP')

select * from list3

---Task1 Part A
select count(Courses) as courses_length from list3
select count(Course_code) as course_code_count from list3
select count(Offered_by) as Offered_by_count from list3

---Task1 Part B
select count(Course_code) as length1_1002 from list3
where Course_code=1002

---Task1 Part C
select count(Courses) as DIP_course from list3
where Courses='DIP'


------Task 2
select Upper(NAME) as NAME from list3
select Upper(Courses) as course_codee from list3
select upper(Offered_by) as offeredby from list3

---Task 2 Part B 
select lower(NAME) as NAME from list3
select lower(Courses) as course_codee from list3
select lower(Offered_by) as offeredby from list3


----Task 3
select Courses from list3
GROUP BY Courses


----Task 4
select max(Reg_No) as registration_no from list3
select min(Course_code) as Course_code from list3

-----Task 5
select len(Name) as length_address  from list3

---Task 6
CREATE TABLE order1(
O_ID int, 
OrderDate varchar(255),
OrderPrice int, 
Customer varchar(255));
INSERT INTO order1 VALUES (1 , '2008/11/12' , 1000 , 'Hansen' );
INSERT INTO order1 VALUES ( 2 , '2008/10/23' , 1600 , 'Nilsen' );
INSERT INTO order1 VALUES (3 , '2008/09/02' , 700 , 'Hansen' );
INSERT INTO order1 VALUES (4 , '2008/09/03' , 300 , 'Hansen ' );
INSERT INTO order1 VALUES(5 , '2008/08/30' , 2000 , 'Jensen');
INSERT INTO order1 VALUES(6 , '2008/10/04' , 100 , 'Nilsen' );
SELECT AVG(OrderPrice) AS Third_column_average FROM order1;

----TAsk 7
select Customer,sum(Orderprice)  as Orderprice from order1
where Customer='Hansen' OR Customer='Nilsen'
Group by Customer
having sum(OrderPrice)<2100;

---Task 8
SELECT Customer,SUM(OrderPrice) AS OrderPrice FROM order1
GROUP BY Customer
HAVING SUM(OrderPrice)>1800 ;