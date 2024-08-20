Create database  Simple_Banking_Application ;
use Simple_Banking_Application;
show tables;
Create table Customers(
CustomerID int primary key,
FirstName varchar(20),
LastName varchar(20),
Email varchar (50),
Phone varchar(50),
AccountCreationDate date);
select * from customers;
desc  customers;


insert into customers
values(1,'Gautam','Krishnan',"Gautamkrishnan82@gmail.com",'9833652505',"2010-05-19"),
	  (2,'Anmol','Dubey',"anmol286@gmail.com",'7678208596',"2009-05-28"),
      (3,'Ananya','Bansode',"ananya12@gmail.com",'9757158690',"2013-07-12"),
      (4,'Usha','Krishnan',"cgusha62@gmail.com",'9892347075',"1989-12-02"),
      (5,'Rahul','Nayak',"raulnayak93@gmail.com",'9234678990',"2003-05-17"),
      (6,'Priyanka','Krishnan',"priyankakrishnan89@gmail.com",'9892357079',"2009-09-17"),
      (7,'Vrashank','Shetty',"svrashank96@gmail.com",'8651233489',"2007-10-10"),
      (8,'Harsh','Mehta',"harshmehta56@gmail.com",'8888901934',"2002-09-17"),
      (9,'Ravindra','Bansode',"ravindrabansode4@gmail.com",'9004500789',"2004-08-23"),
      (10,'Tim','Cook',"timcook90@gmail.com",'8000978945',"2000-02-29"),
      (11,'Rishil','Kritikar',"rishil78@gmail.com",'9833762506',"1999-09-14"),
      (12,'Sagar','Pawar',"sagarupawar12@gmail.com",'7772444489',"2005-07-26");
	
    insert into customers
    Values(14,'Fenil' ,'Aiya',"Fenilaiya89@gmail.com",'7774895601',"2005-09-23");

Create table Accounts(
AccountID int primary key,
CustomerID int,
Foreign key (CustomerID) references Customers(CustomerID),
AccountType varchar(50),
Balance decimal);
desc accounts;


insert into Accounts
values(121,1,'Checking',4000),
      (122,2,'Savings',5000),
      (123,3,'Savings',1000),
      (124,4,'Checking',100),
      (125,5,'Savings',7000),
      (126,6,'Checking',4500),
      (127,7,'Checking',50),
      (128,8,'Savings',890),
      (129,9,'Checking',789),
      (130,10,'Savings',300),
      (131,11,'Checking',800),
      (132,12,'Savings',1100),
      (133,13,'Checking',500),
      (134,7,'Savings',700),
      (135,8,'Checking',1800),
      (136,7,'Checking',7000),
      (137,9,'Checking',7500),
      (138,9,'Savings',1500),
      (139,8,'Savings',1500),
      (140,8,'Savings',50000),
      (141,8,'checking',50000);
      
  
	
      
Create table Transactions(
TransactionID int primary key,
AccountID int,
foreign key (AccountID) references Accounts(AccountID),
TransactionDate Date,
Amount decimal(10,5),
TransactionType varchar(50));
  desc Transactions;
  
  alter table Transactions
  modify Amount decimal(10,2);
  
  insert into Transactions
  values(20001,121,'2015-09-21',200.01,'Deposit'),
        (20002,123,'2016-10-10',3000.10,'Withdrawal'),
        (20003,127,'2014-02-05',300.00,'Deposit'),
        (20004,129,'2021-11-25',900,'Withdrawal'),
        (20005,121,'2015-10-02',500.00,'Withdrawal'),
        (20006,127,'2016-02-13',750.90,'Deposit'),
        (20007,128,'2017-11-06',2000.15,'Withdrawal'),
        (20008,125,'2018-12-09',300.15,'Deposit'),
        (20009,126,'2022-05-12',400.01,'Withdrawal'),
        (20010,130,'2023-08-19',800.175,'Deposit'),
        (20011,131,'2020-06-10',90,'Deposit'),
        (20012,132,'2019-10-06',100.15,'Withdrawal'),
        (20013,124,'2021-11-12',4000,'Deposit'),
        (20014,124,'2021-12-10',515,'Withdrawal'),
        (20015,125,'2015-09-17',890.16,'Deposit'),
        (20016,130,'2016-04-01',789,'Withdrawal'),
        (20017,131,'2013-12-07',989,'Deposit'),
        (20018,128,'2021-03-03',1000,'Withdrawal');
        insert into transactions
        values(20019,133,'2017-09-17',2000,'Withdrawal');
        
        select * from Transactions;

Create table Branches(
BranchID int primary key,
BranchName varchar(30),
BranchAddress varchar(50),
BranchPhone varchar(30));

insert into Branches 
values(15,'HDFC Fort','Nariman point, near kala ghoda, CSMT, Mumbai','02225632375'),
      (16,'HDFC Gawanpada','Gawanpada, Mulund east, Mumbai','02224632498'),
      (17,'HDFC Talaopali','Talaopali, Khopat, Thane','02225635589'),
      (18,'HDFC Thrissur','Wadkancheri, Thrissur, Kerala','0666732398'),
      (19,'HDFC Satra Plaza','Satra plaza 4th floor, Vashi, Navi Mumbai','02223457890'),
      (20,'HDFC Shalimar','Old Delhi, Red Fort, New Delhi','0444578921'),
      (21,'HDFC Dapoli','Navsheva,Dapoli beach, Ratnagiri','0234567821'),
      (22,'HDFC Gondia','New Horizon lane, Nagpur','9222679890'),
      (23,'HDFC Noida','Smart city, Noida, Greater Noida','9757168790'),
      (24,'HDFC Dolphins Nose','Guntur Palace road,Vizag','8930456789'),
      (25,'HDFC Howrah','High Street Road,Kolkata','9892556065');
      
	insert into Branches 
    values(26,'HDFC Gandhinagar','Gandhinagar market,Churu,Ahemadabad','0959234567');
    
    insert into Branches 
    values(27,'HDFC Bhopal','Pheonix MarketCity, Bhopal','9000489012');
    
create table AccountBranches(
AccountID int ,
foreign key (AccountID) references Accounts(AccountID),
BranchID int ,
Foreign key(BranchID) references Branches(BranchID),
AssignmentDate date);

insert into AccountBranches
values(121,15,'2002-12-31'),
	  (122,16,'2004-03-06'),
      (123,17,'2006-10-08'),
      (124,18,'2001-12-06'),
      (125,19,'2007-08-18'),
      (126,20,'2009-04-14'),
      (127,21,'2003-01-30'),
      (128,22,'2000-06-21'),
      (129,23,'2005-11-04'),
      (130,24,'2006-10-20'),
      (131,25,'2002-05-15'),
      (132,26,'2000-08-15'),
      (133,27,'2002-02-02'),
      (134,22,'2005-09-12'),
      (135,21,'2006-07-22'),
      (136,25,'2004-08-22'),
      (137,18,'2002-07-01'),
      (138,15,'2009-07-01'),
      (139,16,'2008-03-01'),
      (140,20,'2007-03-01'),
      (141,20,'2004-03-01');
      select * from AccountBranches;
Create table Loans(
LoanID int primary key,
CustomerID int,
Foreign key(CustomerID) references Customers(CustomerID),
LoanAmount decimal(10,1),
InterestRate Decimal(3,2),
StartDate date,
EndDate date); 

insert into Loans
Values(500012,1,30000,12.1,'2004-10-19','2024-10-20'),
      (500013,2,50000,9.23,'2016-02-14','2030-05-14'),
      (500014,3,10000,15.1,'2010-09-17','2015-10-10'),
      (500015,5,5000,5.1,'2008-11-26','2011-04-24'),
      (500016,6,20000,7.2,'2002-09-09','2004-07-17'),
      (500017,7,55000,10.1,'2006-05-05','2010-06-17'),
      (500018,8,25000,8.1,'2014-07-07','2018-02-13'),
      (500019,9,3400,9.1,'2012-12-12','2012-05-24'),
      (500020,10,5000,8.5,'2019-08-12','2020-05-02'),
      (500021,11,17000,11.2,'2015-10-21','2019-01-02'),
      (500022,12,34000,10.2,'2021-07-12','2032-10-03');
      select * from transactions;
      
-- Write a query to select all transactions from the Transactions table 
-- where the Amount is greater than $500.

select * from transactions
where amount>500; 

-- 	Write a query to select all Accounts
-- where the Balance is between $1000 and $5000 and the AccountType is 'Checking'.

select* from accounts
where balance between 1000 and 5000;

-- Write a query to select all Customers whose LastName starts with 'J'.
select * from customers
where LastName like "J%";

-- Write a query to select AccountID and a new column AccountStatus from the Accounts table.
-- If Balance is greater than $1000, set AccountStatus to 'Active', otherwise 'Inactive'.

 select AccountID, Balance,
 case 
     when Balance >1000 then 'Active'
     else 'Inactive' 
     end as AccountStatus
	from Accounts;
    
-- Write a query to find all Customers who have a balance in their accounts greater than 
-- the average balance of all accounts. Use a subquery to find these CustomerIDs.

select* from accounts;

select CustomerID,Balance
 from Accounts
 where Balance> (select avg(Balance)
                from Accounts);
                
-- 	Write a query to get the total Balance for each AccountType
--  Group the results by AccountType.

select* from Accounts;

select AccountType,sum(Balance) Total_Balance
from Accounts
Group by AccountType;

-- Write a query to get the total number of accounts for each Customer,
-- but only include customers who have more than 2 accounts. Use the HAVING clause.

select CustomerID,Count(CustomerId) 
from Accounts
Group by CustomerID
having Count(customerID)>2;

-- Write a query to select the top 5 customers with the highest LoanAmount.

Select * from loans;

select customerID,LoanAmount
from loans
order by LoanAmount desc
limit 5;

-- Write a query to join Transactions with Accounts to get a list of all transactions
-- with AccountID, TransactionDate, and Amount.

select AccountID, TransactionDate, Amount 
from Accounts join Transactions
using(AccountID);

-- Write a query to get a list of all Accounts and any associated Transactions.
-- Include accounts that might not have any transactions.

Select * from Accounts;
Select * from Transactions;

select AccountID,TransactionID,Amount,TransactionType
from Accounts left outer join Transactions
using(AccountID);

-- Write a query to get the total number of accounts for each branch. 
-- Use an INNER JOIN between AccountBranches and Branches, and group by BranchID.

select * from branches;
select * from AccountBranches;


select b.BranchID,b.BranchName, Count(a.BranchID)
from AccountBranches  a join Branches  b
on a.BranchID=b.BranchID
group by a.branchID;

-- Write a query to find all Branches that manage accounts with a total balance of more than $100,000.
-- Use a subquery in the WHERE clause to find these BranchIDs.

select* from Accounts;
select * from branches;
select* from accountbranches;
select* from loans;
select * from transactions;
select * from customers;

select branchID
from Branches
where BranchID=(select branchID
                from AccountBranches join Accounts
                using(AccountID)
				group by BranchID
                having sum(balance)>100000);
              

			
-- Write a query to list FirstName, LastName, AccountID, and TransactionDate for all transactions.
-- Use INNER JOIN and LEFT JOIN as necessary to get all required details.

select Firstname,Lastname,AccountID, TransactionDate
from Transactions left outer join accounts
using(AccountID)
join customers
using (customerID);
