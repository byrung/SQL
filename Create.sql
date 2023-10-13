-- �������� Book ���̺�
CREATE TABLE Book(
    BOOKID NUMBER(2) PRIMARY KEY,
    BOOKNAME VARCHAR2(40),
    PUBLISHER VARCHAR2(40),
    PRICE NUMBER(8)
);
-- ���Ե��� ImportedBook ���̺�
create table Imported_Book(
    bookied NUMBER,
    bookname VARCHAR(40),
    publisher VARCHAR(40),
    price NUMBER(8)
);

-- ������ Customer ���̺�
CREATE TABLE Customer(
    CUSTID NUMBER(2) PRIMARY KEY,
    NAME VARCHAR2(40),
    ADDRESS VARCHAR2(50),
    PHONE VARCHAR2(20)
);

-- �ֹ����� Orders ���̺�
CREATE TABLE Orders(
    ORDERID NUMBER(2) PRIMARY KEY,
    CUSTID NUMBER(2) REFERENCES Customer(CUSTID),
    BOOKID NUMBER(2) REFERENCES Book(BOOKID),
    SALEPRICE NUMBER(8),
    ORDERDATE DATE
);

-- Book ���̺� 10���� ���� ������ �߰�

insert into Book values(1, '1%�� �д� ��', '����̵�', 19800);
insert into Book values(2, '�Ƹ޸�ĭ ���θ��׿콺', '���̾𽺺Ͻ�', 22500);
insert into Book values(3, '���̳��� ����ħ', '���̿�', 6480);
insert into Book values(4, '���۳��', '���������Ͽ콺', 17550);
insert into Book values(5, '�Ϸ� �ӽ�ũ', '21����Ͻ�', 19800);
insert into Book values(6, '���� ������ ���� ����', '������', 15120);
insert into Book values(7, '���ϸ��� ���߷�', '��ũ�ν�', 16250);
insert into Book values(8, '������', '���������Ͽ콺', 17550);
insert into Book values(9, '���� ����� �����ε�', '���е���', 14520);
insert into Book values(10, '�޸���� ���� ��Ź��', '�Ϸθ���', 13500);


insert into customer values(1, '������', '���� ��ü����', '000-5000-001');
insert into customer values(2, '�迬��', '���� ���۱� �漮��', '02-333-5555');
insert into customer values(3, '��̶�', '���� ��걸 ������', '02-555-7777');
insert into customer values(4, '�߽ż�', '��õ������ ������', '032-233-5656');
insert into customer values(5, '�ڼ���', '���������� ������', '042-322-1237');

