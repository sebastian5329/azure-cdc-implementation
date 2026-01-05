select * from sys.databases;
select name,is_cdc_enabled from sys.databases;

--Enable CDC at database level
EXEC sys.sp_cdc_enable_db;
--Create source table
create table emp(empid int,empname varchar(100),emplocation varchar(100),primary key(empid));
create table cust(cid int,cname varchar(100),cprofits int ,primary key(cid));
select* from sys.tables;
select name,is_tracked_by_cdc from sys.tables;
--Enable CDC on table
EXEC sys.sp_cdc_enable_table
    @source_schema=N'dbo',
    @source_name=N'emp',
    @role_name=NULL,
    @supports_net_changes=1
GO
select * from emp;
--DML operations
insert into emp VALUES
(1,'rama','banglore'),
(2,'krishna','chennai'),
(3,'sai','hyderabad');

update emp
set emplocation='delhi'
where empid in(2,3);

delete from emp where empid=1;