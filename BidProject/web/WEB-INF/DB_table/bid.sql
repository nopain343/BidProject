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
     seq NUMBER NOT NULL,                     --�۹�ȣ
     id VARCHAR2(20) NOT NULL,              --���̵�
     name VARCHAR2(40) NOT NULL,         --�̸�
     email VARCHAR2(40),                         --�̸���
     subject VARCHAR2(255) NOT NULL,     --����
     content VARCHAR2(4000) NOT NULL,   --���� 

     ref NUMBER NOT NULL,                       --�׷��ȣ
     lev NUMBER DEFAULT 0 NOT NULL,      --�ܰ�
     step NUMBER DEFAULT 0 NOT NULL,    --�ۼ���
     pseq NUMBER DEFAULT 0 NOT NULL,   --���۹�ȣ
     reply NUMBER DEFAULT 0 NOT NULL,   --�亯��

     hit NUMBER DEFAULT 0,                      --��ȸ��
     logtime DATE DEFAULT SYSDATE
 );
 insert into board values(seq_board.nextval,'a','����','sunup1','����','������',2,0,0,0,0,0,'2018-10-16')
 insert into board values(seq_board.nextval,'saan','sasdf','������12','������','��������',2,0,0,0,0,0,'2018-10-14')
 insert into board values(seq_board.nextval,'momo','����','�����','�Ф�','������',1,0,0,0,0,0,'2018-10-11')
--�� ������ ��ü �ۼ�
create sequence ��������ü��
create sequence seq_board  nocache nocycle;

select * from board
--�� ������ ��ü ����
drop   sequence ��������ü��
drop   sequence seq_board

--�� �ڵ����� 1�� �����ϴ� ���� ������
select seq_board.nextval from dual

//==================================

CREATE TABLE TEST(name varchar2(20))

insert into test values('a');
insert into test values('sana');
insert into test values('mina');
insert into test values('momo');
insert into test values('IU');

select * from test



