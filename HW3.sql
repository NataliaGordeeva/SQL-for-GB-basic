USE hw_gb;

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff`
(`id` INT PRIMARY KEY AUTO_INCREMENT,
`firstname` VARCHAR(45),
`lastname` VARCHAR(45),
`post` VARCHAR(45),
`seniority` INT,
`salary` INT,
`age` INT
);
SELECT * FROM staff;

INSERT INTO `staff` (`firstname`, `lastname`, `post`,`seniority`,`salary`, `age`)
VALUES
('Вася', 'Васькин', 'Начальник', 40, 100000, 60), 
('Петр', 'Власов', 'Начальник', 8, 70000, 30),
('Катя', 'Катина', 'Инженер', 2, 70000, 25),
('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
('Иван', 'Петров', 'Рабочий', 40, 30000, 59),
('Петр', 'Петров', 'Рабочий', 20, 55000, 60),
('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
('Максим', 'Петров', 'Рабочий', 2, 11000, 19),
('Юрий', 'Петров', 'Рабочий', 3, 12000, 24),
('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);

SELECT * FROM staff;
-- 1. Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания 
SELECT *
FROM staff
ORDER BY salary;

SELECT *
FROM staff
ORDER BY salary DESC;

-- 2. Выведите 5 максимальных заработных плат (salary)

SELECT *
FROM staff
ORDER BY salary DESC
LIMIT 5;

-- 3. Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
SELECT id, lastname, post,
SUM(salary) AS 'суммарная зпл'
FROM staff
GROUP BY post;

-- 4. Найдите количество специальностей
SELECT * FROM staff;

SELECT COUNT(DISTINCT post) AS 'уникальная специальность'
FROM staff;

-- 5.Выведите специальности, у которых средний возраст сотрудников меньше 30 лет 
 SELECT post,
    AVG(age) AS 'средний возраст'
	FROM staff
    GROUP BY post
    HAVING AVG(age) > 30;

-- 6. Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.

SELECT COUNT(id) AS count_id
FROM staff
WHERE post = "Рабочий" AND age >= 24 AND age <= 49;

