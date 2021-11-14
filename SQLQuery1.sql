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