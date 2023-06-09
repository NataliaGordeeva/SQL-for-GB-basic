USE hw_gb;

DROP TABLE IF EXISTS sales;
CREATE TABLE IF NOT EXISTS sales
(id INT PRIMARY KEY AUTO_INCREMENT,
order_date DATE NOT NULL,
count_product INT
);
SELECT * FROM sales;

INSERT INTO sales (order_date, count_product)
VALUES 
	('2022-01-01','156'),
    ('2022-01-02','180'),
    ('2022-01-03','21'),
    ('2022-01-04','124'),
    ('2022-01-05','341');
SELECT * FROM sales;
/* 2.  Для данных таблицы “sales” укажите тип заказа в зависимости от кол-ва : 
меньше 100  -    Маленький заказ
от 100 до 300 - Средний заказ
больше 300  -     Большой заказ
*/

 SELECT
      id AS "номер заказа",
      order_date AS "дата заказа",
      count_product AS "кол-во едениц",
      IF (count_product < 100, "маленький заказ",
      IF (count_product > 100 AND count_product <= 300, "средний заказ", "большой заказ"))
      AS "тип заказа"
       FROM sales;


DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS orders
(id INT PRIMARY KEY AUTO_INCREMENT,
employee_id VARCHAR(20) NOT NULL,
amount DECIMAL (5,2) NOT NULL,
order_status VARCHAR(20)
);

SELECT * FROM orders;
INSERT INTO orders(employee_id, amount, order_status)
VALUES 
	('e03','15.00','OPEN'),
    ('e01','25.50','OPEN'),
    ('e05','100.70','CLOSED'),
    ('e02','22.18','OPEN'),
    ('e04','9.50','CLOSED');

SELECT * FROM orders;

/* Выберите все заказы. В зависимости от поля order_status выведите столбец full_order_status:
OPEN – «Order is in open state» ; CLOSED - «Order is closed»; CANCELLED -  «Order is cancelled»
*/
SELECT
      id AS "id",
      employee_id AS "поставщик",
      amount AS "кол-во",
      order_status AS "статус",
      IF (order_status = 'OPEN', "Order is in open state",
      IF (order_status = 'CLOSED', "Order is closed", "Order is cancelled"))
      AS "full_order_status"
       FROM orders;