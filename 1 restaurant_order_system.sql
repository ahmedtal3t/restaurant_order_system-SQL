create database restaurant_order_system1110;

create table customers
(
custid int identity(1,1) primary key ,
custname nvarchar(40) not null,
gender nchar(1) not null,
email varchar(30)
)
create table category
(
cateid int primary key,
catename nvarchar(30) not null
)
create table product
(
pid char(4) primary key,
pname nvarchar(30) not null unique,
price money not null check(price>0),
descr nvarchar(300) not null,
cateid int foreign key references category(cateid)
)
create table orders
(
oid int primary key,
orderdate datetime not null default(getdate()),
custid int foreign key references customers(custid)
)
create table phone
(
custid int foreign key references customers(custid),
phone char(11) unique
);
create table shipping
(
shipid int primary key,
status bit not null,
time datetime default (getdate()),
oid int foreign key references orders(oid)
);
create table payment

(
payid int primary key,
amount money check(amount>0) not null,
paystatus bit not null,
oid int foreign key references orders (oid)
)
create table order_detail
(
pid char(4) foreign key references product(pid),
oid int foreign key references orders(oid),
order_qty int not null default (1),
primary key (pid,oid)
)
---------------------Alter--------------------------------
alter table customers
add nid char(20)
alter table customers
alter column nid char(14) not null
--------------------------------
alter table product
add brandname varchar(30)
alter table product
alter column brandname varchar(40) not null
alter table product
drop column brandname
-------------------------------------
alter table customers
add check (nid !='00000000000000')
alter table customers
add default ('unknown') for nid
alter table customers
add constraint nid_uq unique(nid)
alter table customers
drop constraint nid_uq
-----------------------------------
alter table customers
drop column nid --error

alter table customers
drop constraint [CK__customers__nid__5165187F]
alter table customers
drop constraint [DF__customers__nid__52593CB8]

alter table customers
drop column nid
-------------------------------------
alter table shipping
drop constraint [DF__shipping__time__46E78A0C]
alter table shipping
add foreign key(oid) references orders(oid)
-----------------------------------
insert into customers
values ('ali salah','m','ali@yahoo.com');
insert into customers (custname,gender,email)
values ('mai samy','f','mai@gmail.com')
insert into customers (custname, gender)
values ('karim','m')
insert into customers
values ('ahmed','m',null)
insert into customers
values ('ahmed')
select * from customers
------------------------------------
insert into orders
values (20,default,2)
insert into orders (oid,custid)
values ('21','3')
insert into orders (oid,custid)
values ('23','1')
--------------------------
insert into category
values ('4','pizza'),
('5','sandwich'),
('6','crep')
select * from category
-------------------------
select * from product
insert into product
values
('3','chiken shawerma',35,'asdssss','4'),

('4','beef shawerma',30,'dasdas','4'),
('5','chiken burger','25','dasdsa','5'),
('6','beef burger','20','dasdas','6')
----------------------------------------------
select * from customers
update customers
set custname='mai'
where custid=4
update customers
set email='ali@gmail.com'
where custname='ail salah' and email = 'ali@yahoo.com'
update customers
set custname='mona khaled', email='mk@gmail.com'
where custid=3
-----------------------------------------
select * from product
update product
set price = price*0.1+price
----------------------------------------
delete from product
where pid=4
select * from product
update customers
set email=null
where custid= 3
update product
set pname=' '
where pid=3
--drop table product
delete from product
select * from product