show databases;
create database school;
use school;
create table person(
slno int,
name varchar(50),
address varchar(100),
mark int,
city varchar(70),
country varchar(100)
);
insert into person(slno,name,address,mark,city,country)
values(1,"vaisakh","cherambilly",100,"angamaly","india"),
(2,"sunil","cherambilly",55,"kottayam","india"),
(3,"sudheesh","cherambilly",78,"wayanad","america"),
(4,"subha","cherambilly",95,"idukki","mexico"),
(5,"ayaan","snehalayam",75,"canada","africa");
select name from person;
select * from  person 
where city="idukki";
#group by
select address
from person where name="vaisakh"

#order by


select * from person
order by slno desc;
#count
select count(*)
from person;


#minimum


select min(slno)
from person where slno<2;

#maximum


select max(slno)
from person where slno>4;

#min 

select min(slno) from person;


#max
select max(slno) from person;

#sum

select sum(slno)
from person;

#avg
select avg(slno)
from person;
#like
select * from person
where name like's%'


#having
select count(slno),country
from person
group by country
having count(slno)<2
order by count(slno)desc;

#between

select slno
from person
where slno between 1 and 5;