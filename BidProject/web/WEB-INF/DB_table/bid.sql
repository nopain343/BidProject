drop table user1;

create table user1(
id varchar2(20),
pwd varchar2(20),
name_u varchar2(20),
birth varchar2(20),
gender number,
tel varchar2(20));

insert into user1 values('a','1234','ddd','19921113','1','010123158')

select * from user1;

select * from tab;


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

//=================================================

drop table board

CREATE TABLE board(
     seq NUMBER NOT NULL,                     --글번호
     id VARCHAR2(20) NOT NULL,              --아이디
     name VARCHAR2(40) NOT NULL,         --이름
     email VARCHAR2(40),                         --이메일
     subject VARCHAR2(255) NOT NULL,     --제목
     content VARCHAR2(4000) NOT NULL,   --내용 

     ref NUMBER NOT NULL,                       --그룹번호
     lev NUMBER DEFAULT 0 NOT NULL,      --단계
     step NUMBER DEFAULT 0 NOT NULL,    --글순서
     pseq NUMBER DEFAULT 0 NOT NULL,   --원글번호
     reply NUMBER DEFAULT 0 NOT NULL,   --답변수

     hit NUMBER DEFAULT 0,                      --조회수
     logtime DATE DEFAULT SYSDATE
 );
 insert into board values(seq_board.nextval,'a','선재','sunup1','제곧내','내곧제',2,0,0,0,0,0,'2018-10-16')
 insert into board values(seq_board.nextval,'saan','sasdf','ㅁㄴㄹ12','ㅇㅇㅇ','ㅁㄴㅇㄹ',2,0,0,0,0,0,'2018-10-14')
 insert into board values(seq_board.nextval,'momo','나나','ㅇ녀습','ㅠㅠ','내곧제',1,0,0,0,0,0,'2018-10-11')
--☆ 시퀀스 객체 작성
create sequence 시퀀스객체명
create sequence seq_board  nocache nocycle;

select * from board
--☆ 시퀀스 객체 삭제
drop   sequence 시퀀스객체명
drop   sequence seq_board

--☆ 자동으로 1씩 증가하는 값을 얻어오기
select seq_board.nextval from dual

//==================================

CREATE TABLE TEST(name varchar2(20))

insert into test values('a');
insert into test values('sana');
insert into test values('mina');
insert into test values('momo');
insert into test values('IU');

select * from test



