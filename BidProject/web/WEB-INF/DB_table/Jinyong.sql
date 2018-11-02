drop table user1 purge;
drop table sales purge;
drop table auction purge;
delete sales;

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

drop sequence code_A


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

INSERT INTO AUCTION(ID, CODE, TERM, FINALPRICE, CAT1) VALUES ('encore', 'AA'||CODE_A.NEXTVAL, '2018-11-03 10:00:00', '25000', 'AA')

create table auction(
id varchar2(20),
code varchar2(20),
term varchar2(20),
finalPrice number);

UPDATE SALES SET CONFIRM = 0 WHERE CODE = 'HH11'
SELECT * FROM SALES WHERE ID=(select id from sales where CODE='HH11')
SELECT * FROM SALES LEFT JOIN AUCTION USING(id) WHERE ID='jin' and code='hh11'
select * from sales join auction using (code)

SELECT MAX(FINALPRICE) FROM AUCTION WHERE CODE = 'GG01';


select * from sales where code like 'CC%' order by 6 asc;
select * from user1;
select * from board;
select * from auction order by 2 asc;
select * from tab;
