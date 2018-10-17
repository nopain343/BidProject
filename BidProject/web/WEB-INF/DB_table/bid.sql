drop table user1;

create table user1(
id varchar2(20),
password varchar2(20),
nickname varchar2(20),
address varchar2(50),
phone varchar2(20));

insert into user1 values('admin', '1234', 'tomato', '서울시 강남구 논현동', '010-1577-1577');
select * from user1;

select * from tab;

SELECT * FROM USER1 WHERE ID='admin' AND PASSWORD='1234'
//-------------------------------------------

drop table category

create table category(
cat1 varchar2(20),
name_p varchar2(20)
);

select * from category


//-------------------------------------------

drop table sales

create table sales(
name_p varchar2(20),
price number,
ref varchar2(1000),
code varchar2(20),
id varchar2(20),
term varchar2(20),
descrip varchar2(4000)
)

select * from sales 
