show databases;
use players;
show tables;
create table acc(id int primary key auto_increment,name varchar(80) not null,accountbalance bigint);
desc acc;
insert into acc(name,accountbalance)values("gokul",10000),("hari",10000);
select * from acc;

start transaction;
update acc
set accountbalance=accountbalance+500
where id=1;

update acc
set accountbalance=accountbalance-500
where id=2;

rollback;
commit;
