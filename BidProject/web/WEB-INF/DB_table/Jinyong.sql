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

create table sales(
cat1 varchar2(20),
prodname varchar2(200),
price number,
condition varchar2(50),
ref varchar2(1000),
code varchar2(20),
id varchar2(20),
term varchar2(20),
descrip varchar2(4000)
);

create table auction(
id varchar2(20),
code varchar2(20),
term varchar2(20),
finalPrice number);

SELECT MAX(FINALPRICE) FROM AUCTION WHERE CODE = 'GG01';

select * from sales;
select * from user1;
select * from board;
select * from auction;
select * from tab;
