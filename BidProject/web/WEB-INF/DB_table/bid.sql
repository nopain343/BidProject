drop table user1 purge;
drop table sales purge;

create table user1(
id varchar2(20),
password varchar2(20),
username varchar2(20),
roadFullAddr varchar2(200),
phone varchar2(20)
pwquestion varchar2(100),
pwanswer varchar2(20));

select * from user1 where id='abcd' and password='1111'
insert into user1 values('admin', '1234', '�슦�썝�옱', '�꽌�슱�떆 媛뺣궓援� �끉�쁽�룞', '010-1577-1577');
SELECT * FROM USER1 WHERE ID = 'test' AND PASSWORD = '1'
select * from sales;
select * from user1;
delete user1;

insert into sales values('의류','자켓',50000,'1','AA01','may','2018-11-03','블랙 자켓~!~!');
insert into sales values('의류','코트',70000,'2','AA02','Jin','2018-11-04','롱코트');
insert into sales values('패션잡화','신발',30000,'3','BB01','jenni7','2018-11-03','나이키신발');
insert into sales values('의류','자켓',50000,'1','AA01','may','2018-11-03','블랙 자켓~!~!');
insert into sales values('패션잡화','name',111,'1','code','id','term','descrip');
insert into sales (cat1) values('test1');
select * from sales;

delete from sales where cat1='test';

SELECT * FROM SALES;

select * from tab;
SELECT PASSWORD, PWQUESTION, PWANSWER FROM USER1 WHERE ID = 'abc'
//-------------------------------------------

create table sales(
category varchar2(20),
name_p varchar2(20),
price number,
ref varchar2(1000),
code varchar2(20),
id varchar2(20),
term varchar2(20),
descrip varchar2(4000));