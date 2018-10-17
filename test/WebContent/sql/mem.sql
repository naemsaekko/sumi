--테이블 생성
create table member2 (
    name varchar2(30) not null,
    id varchar2(30) primary key,    -- 기본키, unique, not null
    pwd varchar2(30) not null,
    gender varchar2(3),
    birth1 varchar2(10),
    birth2 varchar2(10),
    birth3 varchar2(10),
    email1 varchar2(20),
    email2 varchar2(20),
    tel1 varchar2(10),
    tel2 varchar2(10),
    tel3 varchar2(10)
);
--저장/확인/삭제
commit;
select*from member2;
--데이터추가
insert into member2 values ('뚜미','xxx','1313','여','1990','11','3',
    'sumi','naver.com','010','1111','2222');
--시퀀스 객체 생성
create sequence seq_imageboard nocache nocycle;
--시퀀스 객체 삭제
drop sequence deq_imageboard;  