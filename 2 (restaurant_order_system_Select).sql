
---SELECT---


select * from customers
select * from product

-----------------------------
select custname
from customers

select pname, price, cateid 
from product

-----------------------------
select custname as 'customer name'
from customers

select pname as 'product name', price, cateid as 'category id'
from product

-----------------------------

select price from product

--تمنع التكرار
select distinct price from product

-----------------------------

select price from product

select price, price+100 as 'price after add 100'
from product

-----------------------------

select* from product
where price>'25'

-----------------------------

select* from product 
where price>=25 or cateid =4

-----------------------------

select* from customers

select* from customers
where email is null

select* from customers
where email is not null


select* from product

select* from product
where price between'25' and '35'

select* from product
where price not between'25' and '35'

select* from product
where price in ('20', '30')

select* from product
where price not in ('20', '30')

select* from orders

-----------------------------

select* from product

select* from product
where pname= 'chiken'

select* from product
where pname like 'chiken%'

select* from product
where pname not like 'chiken%'

select* from product
where pname like '%beef%'

select* from product
where pname like 'ch__en%'