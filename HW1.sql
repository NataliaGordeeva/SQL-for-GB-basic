#CREATE DATABASE HW_GB;
USE HW_GB;

SELECT * FROM homew_1;
SELECT * FROM hw1;

CREATE TABLE homew_1
(id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
ProductName VARCHAR(30) NOT NULL,
Manufacturer VARCHAR(30) NOT NULL,
ProductCount VARCHAR(30) NOT NULL,
Price VARCHAR(30) NOT NULL
);

INSERT homew_1 (id, ProductName, Manufacturer, ProductCount, Price)
VALUES
(1, "IphoneX", "Apple", "3", "76000"),
(2, "Iphone 8", "Apple", "2", "51000"),
(3, "Galaxy X9", "Samsung", "2", "56000"),
(4, "Galaxy X9", "Samsung", "1", "41000"),
(5, "P20 PRO", "Huawei", "5", "36000");

SELECT * FROM homew_1;

/* Выведите название, производителя и цену для товаров, количество которых превышает 2
*/
SELECT * FROM homew_1
WHERE ProductCount > 2;

/* Выведите весь ассортимент товаров марки “Samsung”
*/
SELECT * FROM homew_1
WHERE Manufacturer LIKE "Samsung";

/* Товары, в которых есть упоминание "Iphone"
*/
SELECT * FROM homew_1
WHERE ProductName LIKE "Iphone%";

/*"Samsung"*/
SELECT * FROM homew_1
WHERE Manufacturer LIKE "Samsung";

/*Товары, в которых есть ЦИФРА "8"*/
SELECT * FROM homew_1
WHERE ProductName LIKE "%8%";





