/* Veritabaný oluþturm:a */
/*create database TekrarDb*/

/* Tablo Oluþturma */
/*Create table TekrarTbl
(
TekrarID tinyint,
TekrarAd varchar(20)
)*/

/* Tablo Düzenleme */
/*alter table TekrarTbl
add SUTUN varchar(10)*/
/*alter table TekrarTbl
drop column SUTUN*/

/*TABLO GETÝRME(ÝSTENEN KISMI GETÝRME, ÞARTLI GETÝRME)*/
/*select * from TekrarTbl where TekrarAd='sa'*/

/*TABLO ÝÇERÝSÝNDE EKLE,SÝL, GÜNCELLEME ÝÞLEMLERÝ +*/
/*insert into TekrarTbl (TekrarAd) values ('de')*/
/*update TekrarTbl set TekrarAd='da' where TekrarID=6*/
/*delete from TekrarTbl where TekrarID=6*/
/*select * from TekrarTbl*/

/*ARÝTMETÝK FONKSÝYONLARI KULLANMA(SUM,AVG,MAX,MIN)*/
/*select SUM(Deger)from TekrarTbl
select AVG(Deger)from TekrarTbl
select MAX(Deger)from TekrarTbl
select MIN(Deger)from TekrarTbl
select TekrarID, COUNT(Deger) AS BaslikAdi
from TekrarTbl
group by TekrarID
having COUNT(Deger) >0;*/

/*Like Komutu*/
--select * from Students where Name like'%a%' Ýçinde a harfi geçen deðerleri getirir.
--select * from Students where Name like'%a' A ile biten deðerleri getirir.
--select * from Students where Name like'a%' A ile baþlayan deðerleri getirir.
--select * from Students where Name not like'%a%' A harfi içermeyen deðerleri getirir.
--select * from Students where Name like '%bu_%' Ýçerisinde yan yana bu olan verileri getirir.
--select * from Students where Name like '[A,B]%' A veya b ile baþlayan deðerleri getirir.
--select * from Students where Name like '%[A,B]' A veya b ile biten deðerleri getirir.
--select * from Students where Name like '%[A-C]' Son harfi a ve c ile arasýndaki harf ile biten verileri getirir.

/*DISTINCT, ORDER BY, DESC, ASC*/
--select DISTINCT NAME FROM STUDENTS Alfabetik sýraya göre getirir.
--SELECT * FROM STUDENTS order by SURNAME Alfabetik sýraya göre getirir.
--asc alfabetik sýraya göre sýralar. desc tam tersi

/*TOP KOMUTUNU KULLANMA*/
--SELECT TOP 3 * FROM STUDENTS En üstteki 3öðrenciyi getirir.
--SELECT TOP 5 * FROM STUDENTS ORDER BY NAME DESC
--SELECT TOP 25 percent * FROM STUDENTS ORDER BY NAME DESC

 /*IN VE NOT IN YAPISINI KULLANMA */
/*select * from Students where Name in ('Osman','mehmet')
select * from Students where Name not in ('Osman','mehmet')*/

/*BETWEEN VE NOT BETWEEN KOMUTUNU KULLANMA*/
/*select * from Students where Age between 11 and 12*/

/*BÝRLEÞTÝRME ÝÞLEMLERÝNÝ (INNER JOIN, LEFT, RIGHT JOIN, FUL JOIN) KULLANMA */
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

/*Matematik Fonksiyonlarý*/
/*select MIN(AGE) FROM Students
select Max(AGE) FROM Students
select AVG(AGE) FROM Students
select SUM(AGE) FROM Students*/

/*ALFABETÝK FONKSÝYONLAR(UPPER VE LOWER, SUBSTRING, LEFT VE RÝGHT, LTRÝM, RTRÝM, REPLACE ) */
--select lower(Name), upper(Surname) from Students
--select Name,Surname, SUBSTRING(AGE,1,3) from Students
--select LEFT('ehuhe',3)
--select right('ehuhe',3)
--select LEFT(Name,3), + ' ' + Surname as 'Ad Soyad' from Students
--select LTRIM('  ehuhe')
--select RTRIM('ehuhe  ')

/*ALFABETÝK FONKSÝYONLAR(LEN,CHARINDEX)*/
/*select * from Students where LEN(Name)=4 or LEN(Surname)=3
select * from Students where LEN(Name + Surname) between 3 and 10*/

/*DATE SORGULARI(DATAPART,DATA NAME,DATA DÝFFNEAME,DATA ADD) KULLANIMI */
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

/*PROCEDURE KULLANIMI(OLUÞTURMA, GÜNCELLEME KALDIRMA)*/
/*Create Procedure GetCustomerOrders
@customerID nvarchar(5)
as
BEGIN
select ORDERID, ORDERDATE, SHÝPCÝTY
FROM ORDERS
WHERE customerID = @customerID

EXEC GetCustomerOrders @CustomerID = 'ALFKI';*/

/*Alter Procedure GetCustomerOrders
@customerID nvarchar(5)
as
BEGIN
select ORDERID, ORDERDATE, SHÝPCÝTY
FROM ORDERS
WHERE customerID = @customerID

select COUNT(*) as Siparissayisi
From Orders
where customerID = @customerID*/

/*DROP PROCEDURE GetCustomerOrders;*/

