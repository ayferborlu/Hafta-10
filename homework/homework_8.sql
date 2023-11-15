--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee( id SERIAL PRIMARY KEY,name VARCHAR(50), birthday DATE,email VARCHAR(100));
--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
INSERT INTO author(first_name,last_name,email,birthday)
VALUES
('Ayfer','Borlu','ayfer@ffff','1993-03-15'),
('Yalçın','Işık','yalcin@ffff','1991-07-09');

--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE author SET first_name ='Banu ', last_name='Ali', email='banu@ali',birthday='1980.12.03' WHERE id=1;
UPDATE author SET first_name ='Yalçın ', last_name='Borlu', email='yalcin@borlu',birthday='1988.11.04' WHERE id=2;

--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM author WHERE id=1;
DELETE from author WHERE first_name='Banu';