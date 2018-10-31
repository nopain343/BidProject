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

create table test3(
cat1 varchar2(20),
code varchar2(20),
id varchar2(20));

create sequence code_AA increment by 1 start with 1 nocache nocycle;
create sequence code_BB increment by 1 start with 1 nocache nocycle;
create sequence code_CC increment by 1 start with 1 nocache nocycle;
create sequence code_DD increment by 1 start with 1 nocache nocycle;
create sequence code_EE increment by 1 start with 1 nocache nocycle;
create sequence code_FF increment by 1 start with 1 nocache nocycle;
create sequence code_GG increment by 1 start with 1 nocache nocycle;
create sequence code_HH increment by 1 start with 1 nocache nocycle;

insert into test3 (cat1, code, id)values('AA','AA'||code_idx.nextval,'test')
select * from test3

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
