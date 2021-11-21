--Welcome to AddressBook--

#UC1 ---Create Addressbook service Database--

CREATE DATABASE AddressBookService;
USE AddressBookService;

#UC2 --Create table--

CREATE TABLE AddressBookTable(
FirstName varchar(100) not null,
LastName varchar(50),
Address varchar(200),
City varchar(150),
StateName varchar(100),
ZipCode int,
Phonenum bigint,
EmailId varchar(100)
);
SELECT * FROM AddressBookTable;

# UC3--Insert into tables using fields--

INSERT  AddressBookTable VALUES('Shubham','Mule','Kotul','Akole','Maharashtra',422610,8792810271,'shubham@gmail.com'),
('Megha','Pawar','Warora','Nagpur','Chandigad',3333333,8232322323,'megha@gmail.com'),
('Akash','Khanse','Dombivali','Mumbai','Maharashtra',444444,9112121212,'akash@gmail.com'),
('Prajwal','Zurunge','Chandannagar','Vimannagar','PPPP',555555,9876543322,'prajwal@gmail.com');
--Retrieve all data from AddressBookTable--
SELECT * FROM AddressBookTable;

#UC4 --Edit contact using their name--

UPDATE AddressBookTable SET Phonenum=97456638984 WHERE FirstName='Shubham';
UPDATE AddressBookTable SET LastName='Maske' WHERE FirstName='Prajwal';
UPDATE AddressBookTable SET EmailId='kumar12@gmail.com' WHERE LastName='Khanse';
select * from AddressBookTable;

#UC5 --Delete contact using their name---

DELETE FROM AddressBookTable WHERE FirstName='Megha';
SELECT * FROM AddressBookTable;

#UC6 --Retrieve person's City--

SELECT FirstName FROM  AddressBookTable WHERE City='Mumbai' or StateName='Maharashtra';

UC7---Size or count by city and state---

SELECT COUNT(City) AS Size,City,StateName FROM AddressBookTable GROUP BY StateName,City;

UC8-----sort name entries based on city */
Insert into ContactsTable(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,EmailId) values 
('Raju','S','near store','Mumbai','Maharashtra',400092,'7895553330','rajus@mail.com'),
('Ketan','L','near school','Mumbai','Maharashtra',400089,'9877553030','ketanl@mail.com'),
('Nitya','P','Kalina','Mumbai','Maharashtra',400098,'7733400300','nityap@mail.com');
SELECT * from ContactsTable

SELECT * FROM ContactsTable WHERE City = 'Mumbai' ORDER BY FirstName ASC;	--ascending
SELECT * FROM ContactsTable WHERE City = 'Mumbai' ORDER BY FirstName DESC;	--descending

//UC9 --- Ability to identify each Address Book with name and Type
ALTER table ContactsTable ADD AdrBookName varchar(8);
ALTER table ContactsTable ADD PersonType VARCHAR(16);

UPDATE ContactsTable set AdrBookName='AB1' where Id=1 OR Id=6 OR Id=8
UPDATE ContactsTable set AdrBookName='AB2' where Id=2 OR Id=3 
UPDATE ContactsTable set AdrBookName='AB3' where Id=4 OR Id=7

UPDATE ContactsTable set PersonType='Friends' where AdrBookName='AB1'
UPDATE ContactsTable set PersonType='Family' where AdrBookName='AB2'
UPDATE ContactsTable set PersonType='Profession' where AdrBookName='AB3'
SELECT * FROM ContactsTable

//UC10----Ability to get number of contact persons i.e. count by type 

SELECT PersonType,COUNT(PersonType) as count from ContactsTable group by PersonType


//UC11 ----Ability to add person to both Friend and Family 
create table PersonCategory (
	Id int identity(1,1) primary key,
	PersonId int foreign key references ContactsTable(Id),
	PersonType varchar(20) not null
	)
insert into PersonCategory(PersonId,PersonType) values (1,'Family'),(2,'Friend'),(3,'Family'),(4,'Friend'),(6,'Profession'),(7,'Profession'),(8,'Profession');
select * from PersonCategory;
----- adding id 4 as friend and family
insert into PersonCategory(PersonId,PersonType) values(1,'Profession'),(4,'Family');