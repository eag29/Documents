/* Veritaban� olu�turm:a */
/*create database TekrarDb*/

/* Tablo Olu�turma */
/*Create table TekrarTbl
(
TekrarID tinyint,
TekrarAd varchar(20)
)*/

/* Tablo D�zenleme */
/*alter table TekrarTbl
add SUTUN varchar(10)*/
/*alter table TekrarTbl
drop column SUTUN*/

/*TABLO GET�RME(�STENEN KISMI GET�RME, �ARTLI GET�RME)*/
/*select * from TekrarTbl where TekrarAd='sa'*/

/*TABLO ��ER�S�NDE EKLE,S�L, G�NCELLEME ��LEMLER� +*/
/*insert into TekrarTbl (TekrarAd) values ('de')*/
/*update TekrarTbl set TekrarAd='da' where TekrarID=6*/
/*delete from TekrarTbl where TekrarID=6*/
/*select * from TekrarTbl*/

/*AR�TMET�K FONKS�YONLARI KULLANMA(SUM,AVG,MAX,MIN)*/
/*select SUM(Deger)from TekrarTbl
select AVG(Deger)from TekrarTbl
select MAX(Deger)from TekrarTbl
select MIN(Deger)from TekrarTbl
select TekrarID, COUNT(Deger) AS BaslikAdi
from TekrarTbl
group by TekrarID
having COUNT(Deger) >0;*/

/*Like Komutu*/
--select * from Students where Name like'%a%' ��inde a harfi ge�en de�erleri getirir.
--select * from Students where Name like'%a' A ile biten de�erleri getirir.
--select * from Students where Name like'a%' A ile ba�layan de�erleri getirir.
--select * from Students where Name not like'%a%' A harfi i�ermeyen de�erleri getirir.
--select * from Students where Name like '%bu_%' ��erisinde yan yana bu olan verileri getirir.
--select * from Students where Name like '[A,B]%' A veya b ile ba�layan de�erleri getirir.
--select * from Students where Name like '%[A,B]' A veya b ile biten de�erleri getirir.
--select * from Students where Name like '%[A-C]' Son harfi a ve c ile aras�ndaki harf ile biten verileri getirir.

/*DISTINCT, ORDER BY, DESC, ASC*/
--select DISTINCT NAME FROM STUDENTS Alfabetik s�raya g�re getirir.
--SELECT * FROM STUDENTS order by SURNAME Alfabetik s�raya g�re getirir.
--asc alfabetik s�raya g�re s�ralar. desc tam tersi

/*TOP KOMUTUNU KULLANMA*/
--SELECT TOP 3 * FROM STUDENTS En �stteki 3��renciyi getirir.
--SELECT TOP 5 * FROM STUDENTS ORDER BY NAME DESC
--SELECT TOP 25 percent * FROM STUDENTS ORDER BY NAME DESC

 /*IN VE NOT IN YAPISINI KULLANMA */
/*select * from Students where Name in ('Osman','mehmet')
select * from Students where Name not in ('Osman','mehmet')*/

/*BETWEEN VE NOT BETWEEN KOMUTUNU KULLANMA*/
/*select * from Students where Age between 11 and 12*/

/*B�RLE�T�RME ��LEMLER�N� (INNER JOIN, LEFT, RIGHT JOIN, FUL JOIN) KULLANMA */
/*select * from Students
inner join TekrarTbl
on Students.StudentID = TekrarTbl.Deger*/

/*Sub Query*/
/*
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice > (
    SELECT AVG(UnitPrice)
    FROM Products
);*/

/*Matematik Fonksiyonlar�*/
/*select MIN(AGE) FROM Students
select Max(AGE) FROM Students
select AVG(AGE) FROM Students
select SUM(AGE) FROM Students*/

/*ALFABET�K FONKS�YONLAR(UPPER VE LOWER, SUBSTRING, LEFT VE R�GHT, LTR�M, RTR�M, REPLACE ) */
--select lower(Name), upper(Surname) from Students
--select Name,Surname, SUBSTRING(AGE,1,3) from Students
--select LEFT('ehuhe',3)
--select right('ehuhe',3)
--select LEFT(Name,3), + ' ' + Surname as 'Ad Soyad' from Students
--select LTRIM('  ehuhe')
--select RTRIM('ehuhe  ')

/*ALFABET�K FONKS�YONLAR(LEN,CHARINDEX)*/
/*select * from Students where LEN(Name)=4 or LEN(Surname)=3
select * from Students where LEN(Name + Surname) between 3 and 10*/

/*DATE SORGULARI(DATAPART,DATA NAME,DATA D�FFNEAME,DATA ADD) KULLANIMI */
--select * from Students where DATEPART(DAY,Age) between 1 and 3
/*select DATENAME(WEEKDAY, '09.04.2025')
select DATENAME(WEEKDAY, GETDATE())
select DATENAME(MONTH,GETDATE()), DATENAME(MONTH,'09.04.2025')*/

/*Tetikleyiciler KULLANIMI */

/*create trigger OGRENCIARTTIR
ON STUDENTS
AFTER INSERT
AS
UPDATE TekrarTbl SET Deger= Deger+1*/

/*PROCEDURE KULLANIMI(OLU�TURMA, G�NCELLEME KALDIRMA)*/
/*Create Procedure GetCustomerOrders
@customerID nvarchar(5)
as
BEGIN
select ORDERID, ORDERDATE, SH�PC�TY
FROM ORDERS
WHERE customerID = @customerID

EXEC GetCustomerOrders @CustomerID = 'ALFKI';*/

/*Alter Procedure GetCustomerOrders
@customerID nvarchar(5)
as
BEGIN
select ORDERID, ORDERDATE, SH�PC�TY
FROM ORDERS
WHERE customerID = @customerID

select COUNT(*) as Siparissayisi
From Orders
where customerID = @customerID*/

/*DROP PROCEDURE GetCustomerOrders;*/

