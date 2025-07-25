-- create database
create database assessment1;
-- use it
use assessment1;

-- create table salesman
Create table salesman(salesman_id int primary key,name
varchar(20),city varchar(20),commission varchar(10));

-- display table
desc salesman;

-- create table customer
Create table customer(customer_id int primary key,
cust_name varchar(20),city varchar(20),grade
varchar(10),salesman_id int,foreign key(salesman_id) references
salesman (salesman_id));

-- display table 
desc customer;

-- insert data into salesman table

insert into salesman values(5001,"James Hoog","New York","0.15"), 
(5002,"Nail Knite","Paris","0.13"),
(5003,"Lauson Hen","San Jose","0.12"),
(5005,"Pit Alex","London","0.11"),
(5006,"Mc Lyon","Paris","0.14"),
 (5007,"Paul Adam","Roem","0.13");
 
 -- display data
  select * from salesman;
 
 -- insert data into  customer table
 insert into customer values(3001,"Brad Guzan","London","",5005), 
(3002,"Nick Rimando","New York","100",5001), 
(3003,"Jozy Altidor","Moscow","200",5007),
(3004,"Fabian Johnson","Paris","300",5006), 
(3005,"Graham Zusi","California","200",5002),
(3007,"Brad Davis","New York","200",5001), 
(3008,"Julian Green","London","300",5002),
(3009,"Geoff Cameron","Berlin","100",5003);

 -- display data
  select * from customer;
  
 -- create main query that dispaly
 -- From the above given tables write a SQL query to find the
-- salesperson(s) and the customer(s) represented here.
-- Return the Customer Name, City, Salesman, commission.

select cust_name,customer.city,commission from salesman inner join customer on salesman.salesman_id=customer.salesman_id;