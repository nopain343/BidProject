
drop table board
ID, NAME, EMAIL, SUBJECT, CONTENT
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

select * from board order by 1 desc 
--�� ������ ��ü ����
drop   sequence ��������ü��
drop   sequence seq_board

--�� �ڵ����� 1�� �����ϴ� ���� ������
select seq_board.nextval from dual
