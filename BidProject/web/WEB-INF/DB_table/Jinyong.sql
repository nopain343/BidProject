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


create sequence code_AA increment by 1 start with 11 nocache nocycle;
create sequence code_BB increment by 1 start with 11 nocache nocycle;
create sequence code_CC increment by 1 start with 11 nocache nocycle;
create sequence code_DD increment by 1 start with 11 nocache nocycle;
create sequence code_EE increment by 1 start with 11 nocache nocycle;
create sequence code_FF increment by 1 start with 11 nocache nocycle;
create sequence code_GG increment by 1 start with 11 nocache nocycle;
create sequence code_HH increment by 1 start with 11 nocache nocycle;

create sequence code_A increment by 1 start with 11 nocache nocycle;
create sequence code_B increment by 1 start with 11 nocache nocycle;
create sequence code_C increment by 1 start with 11 nocache nocycle;
create sequence code_D increment by 1 start with 11 nocache nocycle;
create sequence code_E increment by 1 start with 11 nocache nocycle;
create sequence code_F increment by 1 start with 11 nocache nocycle;
create sequence code_G increment by 1 start with 11 nocache nocycle;
create sequence code_H increment by 1 start with 11 nocache nocycle;

create table auction(
id varchar2(20),
code varchar2(20),
term varchar2(20),
finalPrice number);

SELECT MAX(FINALPRICE) FROM AUCTION WHERE CODE = 'GG01';

select * from sales order by 6 asc;
select * from user1;
select * from board;
select * from auction order by 2 asc;
select * from tab;
