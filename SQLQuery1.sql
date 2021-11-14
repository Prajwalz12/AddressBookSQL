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
UPDATE AddressBookTable SET LastName='Maske' WHERE FirstName='Prajwal';cle
UPDATE AddressBookTable SET EmailId='kumar12@gmail.com' WHERE LastName='Khanse';
select * from AddressBookTable;
