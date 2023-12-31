CREATE TABLE IF NOT EXISTS staff (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(15),
surname VARCHAR(15),
speciality  VARCHAR(15),
seniority INT,
salary INT,
age INT);
 
INSERT INTO 
    staff (name, surname, speciality, seniority, salary, age)
VALUES
    ("Вася", "Васькин", "начальник", 40, 100000, 60),
    ("Петя", "Петькин", "начальник", 8, 70000, 30),
    ("Катя", "Катькин", "инженер", 2, 70000, 25),
    ("Саша", "Сашкин", "инженер", 12, 50000, 35),
    ("Иван", "Иванов", "рабочий", 40, 30000, 59),
    ("Петр", "Петров", "рабочий", 20, 250000, 40),
    ("Сидор", "Сидоров", "рабочий", 10, 20000, 35),
    ("Антон", "Антонов", "рабочий", 8, 19000, 28),
    ("Юра", "Юркин", "рабочий", 5, 15000, 25),
    ("Максим", "Воронин", "рабочий", 2, 11000, 22),
    ("Юра", "Галкин", "рабочий", 3, 12000, 24),
    ("Люся", "Люськина", "уборщик", 10, 10000, 49);

select *
from staff
order by salary;

select *
from staff
order by salary desc;

select *
from staff
order by salary desc
limit 5;

SELECT speciality
from staff
GROUP BY speciality
having sum(salary) > 100000;