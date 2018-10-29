drop table user1 purge;
drop table sales purge;
SELECT * FROM SALES WHERE CAT1 = '애완'
create table user1(
id varchar2(20),
password varchar2(20),
username varchar2(20),
roadFullAddr varchar2(200),
phone varchar2(20)
pwquestion varchar2(100),
pwanswer varchar2(20));

insert into user1 values('admin', '1234', '�슦�썝�옱', '�꽌�슱�떆 媛뺣궓援� �끉�쁽�룞', '010-1577-1577');
SELECT * FROM USER1 WHERE ID = 'a' AND PASSWORD = '1'
select * from sales;
select * from user1;
delete user1;

insert into sales values('의류','자켓',50000,'1','AA01','may','2018-11-03','블랙 자켓~!~!');
insert into sales values('의류','코트',70000,'2','AA02','Jin','2018-11-04','롱코트');
insert into sales values('패션잡화','신발',30000,'3','BB01','jenni7','2018-11-03','나이키신발');
insert into sales values('의류','자켓',50000,'1','AA01','may','2018-11-03','블랙 자켓~!~!');
insert into sales values('패션잡화','name',111,'1','code','id','term','descrip');
insert into sales (cat1) values('test1');
select * from board;

delete from sales where cat1='test';

SELECT * FROM SALES;
drop table sales 
select * from tab;
SELECT PASSWORD, PWQUESTION, PWANSWER FROM USER1 WHERE ID = 'abc'
//-------------------------------------------


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
SELECT cat1, prodname, price, condition, ref, code, id, term, descrip FROM (SELECT ROWNUM RN, SALES.* FROM SALES) WHERE RN>=1 AND RN<=10;



insert into sales values('도서,티켓','찰리푸스 내한 콘서트 11/7 양도',150000,'중고','#내한콘서트#찰리푸스#콘서트#티켓#양도','HH08','encore','2018-11-03 12:00:00','저도 양도받은거라 원가 양도는 안됩니다 ㅠㅠ 
사진 있는거처럼 자리는 엄청 좋구요 쉽게 못 구하실꺼에요.. 이정도 자리 
직거래는 대구만 가능하구요 타지역은 택배로 보내드리겠습니다. 
문의는 댓글 남겨주세요
');

insert into sales values('도서,티켓','롤드컵 결승전 티켓 다이아석 양도합니다.',115000,'중고','#롤드컵#롤드컵결승#다이아석#양도#티켓#결승전#롤','HH09','data','2018-11-04 18:00:00','좌석은 사진에 나와있구요
인천 문학 주경기장에서 직접 만나서 드리겠습니다.
문의는 댓글로 남겨주세요
');
insert into sales values('도서,티켓','남우현 콘서트 식목일 첫콘서트 양도',110000,'중고','#남우현#우현#남우현콘서트#티켓#양도#콘서트#인피니트','HH10','jeongjin','2018-11-02 21:00:00','남우현 첫콘 원가 양도입니다.
좌석은 A구역68n번입니다. 등기발송 가능하구요 저도 가기때문에 현장직거래 가능합니다.
');


insert into sales values('애완','츄르 60개입',15000,'새물품(미사용)','#고양이#마약#간식#츄르#대용량','GG01','may','2018-11-02 21:00:00','실수로 너무 많이 사서 다시 팔려고 합니다.
포장 안 뜯었습니다.');

insert into sales values('애완','캐츠랑 전연령 점보 고양이 사료',20000,'새물품(미사용)','#고양이#사료#대용량#전연령#고양이밥','GG02','data','2018-11-03 12:00:00','다른 사료로 바꾸고 싶어 올립니다.
포장 뜯겨져있긴한데 한번밖에 밥을 준적이 없고 무게는 큰 차이없습니당.
신림 직거래 가능하신분 좋아요 ㅎㅎ');


	SELECT CAT1, PRODNAME, PRICE, CONDITION, REF, CODE, ID, TERM, DESCRIP FROM (SELECT ROWNUM RN, SALES.* FROM SALES) WHERE RN>=1*10-9 AND RN<=1*10;


