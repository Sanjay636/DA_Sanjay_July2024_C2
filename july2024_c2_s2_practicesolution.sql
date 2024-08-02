-- to create a database named techmac_db --
create database techmac_db;
-- selecting a database to work-- 
use techmac_db;
-- to create three table named thechhyve_employees, techcloud_employees, techsoft_employees with various columns --
create table techhyve_employees (employee_ID varchar(40) primary key, first_name varchar(40) not null, last_name varchar(40) not null, gender varchar(40) , age int default 21);
create table techcloud_employees (employee_ID varchar(40) primary key, first_name varchar(40) not null, last_name varchar(40) not null, gender varchar(40) , age int default 21);
create table techsoft_employees (employee_ID varchar(40) primary key, first_name varchar(40)not null, last_name varchar(40) not null, gender varchar(40), age int default 21);

-- alter the age column structure with check constraint --
alter table techmac_db.techhyve_employees add constraint age_chk check(age between 21 and 55);
alter table techmac_db.techcloud_employees add constraint tc_age_chk check (age between 21 and 55); 
alter table techmac_db.techsoft_employees add constraint ts_age_chk check(age between 21 and 55);

-- add two new columns--
alter table techhyve_employees add (username varchar(40)  not null unique, pass_word varchar(40) not null unique);
alter table techcloud_employees add (username varchar(40)  not null unique, pass_word varchar(40) not null unique);
alter table techsoft_employees add (username varchar(40)  not null unique, pass_word varchar(40) not null unique);

-- alter the gender column structure with the check constraint--
alter table techhyve_employees add constraint th_gender_chk check (gender  in (  'Male', 'Female'));
alter TABLE techcloud_employees add constraint tc_gender_chk check (gender IN ("Male" ,'Female'));
alter table techsoft_employees add constraint ts_gender_chk check (gender IN( "Male" ,'Female'));

-- add new column communication_proficiency , use check and default constraint --
alter table techhyve_employees add (Communication_Proficiency int default 1,check (Communication_proficiency between 1 and 5));
alter table techcloud_employees  add (Communication_Proficiency int default 1,check (tc_Communication_proficiency between 1 and 5));
alter table techsoft_employees add (Communication_Proficiency int default 1,check (Communication_proficiency between 1 and 5));
select * from techhyve_employees;

create table techmac_db.techhyvecloud_employees(employee_ID varchar(40) primary key, first_name varchar(40) not null, last_name varchar(40) not null, gender varchar(40) , age int default 21,username varchar(40) not null unique,pass_word varchar(40) not null unique,Communication_Proficiency int default 1,check (Communication_proficiency between 1 and 5));
select * from techhyve_employees join techhyvecloud_employees using (employee_ID,first_name,last_name,gender,age,username,pass_word, Communication_Proficiency);
select * from techcloud_employees join techhyvecloud_employees using (employee_ID,first_name,last_name,gender,age,username,pass_word, Communication_Proficiency);
select*from techhyvecloud_employees;
-- created a new database to backup the data --

create database backup_techmac_db;
create table  backup_techmac_db.techhyve_employees_bkp select * from techmac_db.techhyve_employees;
create table backup_techmac_db.techcloud_employees_bkp select *  from techmac_db.techcloud_employees;
create table backup_techmac_db.techsoft_employees_bkp select * from techmac_db.techsoft_employees;
desc backup_techmac_db.techhyve_employees_bkp;
select * from backup_techmac_db.techhyve_employees_bkp ;
/* delete the data of some employees from the original
table and retain it in the backup database*/
set sql_safe_updates = 0;
delete from techhyve_employees ;

delete from techcloud_employees ;

show tables;

select * from techhyve_employees;
select * from techcloud_employees;
select * from techsoft_employees;

















 
