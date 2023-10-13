-- 도서정보 Book 테이블
CREATE TABLE Book(
    BOOKID NUMBER(2) PRIMARY KEY,
    BOOKNAME VARCHAR2(40),
    PUBLISHER VARCHAR2(40),
    PRICE NUMBER(8)
);
-- 수입도서 ImportedBook 테이블
create table Imported_Book(
    bookied NUMBER,
    bookname VARCHAR(40),
    publisher VARCHAR(40),
    price NUMBER(8)
);

-- 고객정보 Customer 테이블
CREATE TABLE Customer(
    CUSTID NUMBER(2) PRIMARY KEY,
    NAME VARCHAR2(40),
    ADDRESS VARCHAR2(50),
    PHONE VARCHAR2(20)
);

-- 주문정보 Orders 테이블
CREATE TABLE Orders(
    ORDERID NUMBER(2) PRIMARY KEY,
    CUSTID NUMBER(2) REFERENCES Customer(CUSTID),
    BOOKID NUMBER(2) REFERENCES Book(BOOKID),
    SALEPRICE NUMBER(8),
    ORDERDATE DATE
);

-- Book 테이블에 10권의 도서 정보를 추가

insert into Book values(1, '1%를 읽는 힘', '토네이도', 19800);
insert into Book values(2, '아메리칸 프로메테우스', '사이언스북스', 22500);
insert into Book values(3, '세이노의 가르침', '데이원', 6480);
insert into Book values(4, '슈퍼노멀', '웅진지식하우스', 17550);
insert into Book values(5, '일론 머스크', '21세기북스', 19800);
insert into Book values(6, '문과 남자의 과학 공부', '돌베개', 15120);
insert into Book values(7, '도둑맞은 집중력', '어크로스', 16250);
insert into Book values(8, '역행자', '웅진지식하우스', 17550);
insert into Book values(9, '아주 희미한 빛으로도', '문학동네', 14520);
insert into Book values(10, '메리골드 마음 세탁소', '북로망스', 13500);


insert into customer values(1, '박지성', '영국 맨체스터', '000-5000-001');
insert into customer values(2, '김연아', '서울 동작구 흑석동', '02-333-5555');
insert into customer values(3, '장미란', '서울 용산구 보광동', '02-555-7777');
insert into customer values(4, '추신수', '인천광역시 연수구', '032-233-5656');
insert into customer values(5, '박세리', '대전광역시 유성구', '042-322-1237');

