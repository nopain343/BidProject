drop table board
ID, NAME, EMAIL, SUBJECT, CONTENT
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

<<<<<<< HEAD
select * from board
--☆ 시퀀스 객체 삭제
drop   sequence 시퀀스객체명
=======
select * from board order by 1 desc 
--�� ������ ��ü ����
drop   sequence ��������ü��
>>>>>>> branch 'master' of https://github.com/sunup1992/BidProject.git
drop   sequence seq_board

--☆ 자동으로 1씩 증가하는 값을 얻어오기
select seq_board.nextval from dual