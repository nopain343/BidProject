select * from tab;
drop table board purge;
select * from board;

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

 select * from board;
--�� ������ ��ü �ۼ�
create sequence ��������ü��
create sequence seq_board  nocache nocycle;

--�� ������ ��ü ����
drop   sequence ��������ü��
drop   sequence seq_board

--�� �ڵ����� 1�� �����ϴ� ���� ������
select seq_board.nextval from dual


delete board where LEV=0
select * from board;