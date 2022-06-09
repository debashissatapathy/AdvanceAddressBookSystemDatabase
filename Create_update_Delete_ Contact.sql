--UC1: Create DataBase--
create database Address_Book_Service
use Address_Book_Service

--uc2: Create Address Book Table--

create table AddressBook (
ID int Primary Key Identity (1,1),
FirstName Varchar(100),
LastName Varchar(100),
Address Varchar(100),
City Varchar(100),
State Varchar(100),
Zip int,
PhoneNumber Varchar(12),
Email_ID Varchar(100)
);

--uc3: Insert new Contacts to Address Book--

Insert into AddressBook Values ('Rajesh','Khanna','KolaPur','Relangi','Maharastra',500010,'9965828490','Rajeshkhanna@gmail.com'),
							   ('Salman','Khan','Andheri','Mumbai','Maharastra',500011,'8374548927','Salamankhan@gmail.com'),
							   ('Deepak','Dash','Bhubaneswar','Khurdha','Odisha',500012,'9003738263','Deepak@gmail.com'),
							   ('Santosh','Mohanty','Remuna','Balasore','Odisha',500013,'9726537839','Santosh@gmail.com'),
							   ('Vastav','Kumar','new colony','BHadrak','Odisha',500014,'9003682005','Vastav@gmail.com');
Select * from AddressBook;

--UC4: Update existing contact using name--

update AddressBook set First_Name='Rohan' where Id=7;
update AddressBook set City='Bhadrak' where First_Name='Vastav';
update AddressBook set Email='Rohan@gmail.com' where First_Name='Rohan';


--UC5: Delete Contact using name--
Insert into AddressBook Values ('Raj','dash','bhadrak','bhadrak','odisha',500010,'9045679905','raj@gmail.com');

Delete From AddressBook where First_Name = 'Raj';

--UC6: Retrieve person or contact belonging to particular state or city--

Select * from AddressBook where City ='Mumbai' or State ='Maharastra';
Select * from AddressBook where City ='Balasore';
Select * from AddressBook where State ='Odisha';


--UC7: size of AddressBook using city or state--

select count(City) Total_City from AddressBook;
select count(State) Total_State from AddressBook;

--UC8: Sort Contacts by name in alphabetical order--

Select * from AddressBook order by First_Name ASC;
Select * from AddressBook order by First_Name DESC;
Select * from AddressBook where City = 'Bhadrak' order by Last_Name ASC;


--UC9: Add ContactType--
Alter table AddressBook add Contact_Type varchar(100);
update AddressBook set Contact_Type='Family' where First_Name='Rajesh';
update AddressBook set Contact_Type='Friend' where First_Name='Salman';
update AddressBook set Contact_Type='Profession' where First_Name='Deepak';
update AddressBook set Contact_Type='Friend' where First_Name='Santosh';
update AddressBook set Contact_Type='Friend' where First_Name='Vastav';
update AddressBook set Contact_Type='Family' where First_Name='Rohan';
update AddressBook set Contact_Type='Profession' where First_Name='Raj';
Select * from AddressBook;

--UC10: get count by ContactType--
select Count(Contact_Type) TotalContact from AddressBook;

--UC11: add same person to both friend and family--

Insert into AddressBook Values ('Kiran','Kishore','Khempur','Lakhnow','UtterPradesh',500012,'90375373006','Kiran@gmail.com','Family'),
							   ('Sai','Raj','Pathuriaghat','Kolkatta','WestBengal',500009,'9862454879','Sai@gmail.com','Friend');
Select * from AddressBook;