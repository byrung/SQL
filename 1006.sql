set serveroutput on;
exec interest;

create table book_log(
    bookid_1 number,
    bookname_1 varchar2(40),
    publisher_1 varchar2(40),
    price_l number
);

insert into book values(15, '과학 좋아요', '과학미디어', 25000);
select * from book where bookid=15;
select * from book_log where bookid_1=15;
--실행할 떄 블럭설정하고 실행하세요
select custid, orderid, saleprice, fnc_interest(saleprice) from orders;

-- insertBook() 프로시저를 수정하여 고객을 새로 등록하는 insertCustomer() 프로시저를 작성하시오.


exec insertcustomer(6, '이정빈', '서울 이태원 보광동', '010-1234-1234');