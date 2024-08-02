-- to create a database named techmac_db --
create database techmac_db;
-- selecting a database to work-- 
use techmac_db;
-- to create three table named thechhyve_employees, techcloud_employees, techsoft_employees with various columns --
create table techhyve_employees (employee_ID varchar(40) primary key, first_name varchar(40) not null, last_name varchar(40)  not null, gender varchar(40) not null, age int not null);
create table techcloud_employees (employee_ID varchar(40) primary key, first_name varchar(40) not null, last_name varchar(40) not null, gender varchar(40) not null, age int not null);
create table techsoft_employees (employee_ID varchar(40) primary key, first_name varchar(40) not null, last_name varchar(40) not null, gender varchar(40) not null, age int not null);
-- need to insert the values of the table --
insert into techhyve_employees values ("TH0001", 'Eli', 'Evans', 'Male', 26);
insert into techhyve_employees values ("TH0002", 'Carlos', 'Simmons', 'Male', 32);
insert into techhyve_employees values ("TH0003", 'Kathie', 'Bryant', 'Female', 25);
insert into techhyve_employees values ("TH0004",'Joey', 'Hughes', 'Male',  41);
insert into techhyve_employees values ("TH0005", 'Alice', 'Matthews', 'Female', 52); 

insert into techcloud_employees values ("TC0001", 'Teresa', 'Bryant', 'Female', 39);
insert into techcloud_employees values ("TC0002", 'Alexis', 'Patterson', 'Male', 48);
insert into techcloud_employees values ("TC0003", 'Rose', 'Bell', 'Female', 42);
insert into techcloud_employees values ("TC0004", 'Gemma', 'Watkins', 'Female', 44);
insert into techcloud_employees values ("TC0005", 'Kingston', 'Martinez', 'Male', 29);

insert into techsoft_employees values ("TS0001", 'Peter', 'Burtler', 'Male', 44);
insert into techsoft_employees values ("TS0002", 'Harold', 'Simmons', 'Male', 54);
insert into techsoft_employees values ("TS0003", 'Juliana', 'Sanders', 'Female', 36);
insert into techsoft_employees values ("TS0004", 'Paul', 'Ward', 'Male', 29);
insert into techsoft_employees values ("TS0005", 'Nicole', 'Bryant', 'Female', 30);
-- created a new database to backup the data --
create database backup_techmac_db;
create table  backup_techmac_db.techhyve_employees_bkp select * from techmac_db.techhyve_employees;
create table backup_techmac_db.techcloud_employees_bkp select *  from techmac_db.techcloud_employees;
create table backup_techmac_db.techsoft_employees_bkp select * from techmac_db.techsoft_employees;
desc backup_techmac_db.techhyve_employees_bkp;
select * from backup_techmac_db.techhyve_employees_bkp ;
/* delete the data of some employees from the original
table and retain it in the backup database*/
delete from techhyve_employees where employee_ID="TH0003";
delete from techhyve_employees where employee_ID="TH0005";
delete from techcloud_employees where employee_ID="TC0001";
delete from techcloud_employees where employee_ID="TC0004";
show tables;

select * from techhyve_employees;
select * from techcloud_employees;
select * from techsoft_employees;