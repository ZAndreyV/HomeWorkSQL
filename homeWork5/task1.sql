CREATE TABLE if not exists Cars
(
    id    INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(30) NULL,
    cost  INT NULL
);

INSERT INTO 
    Cars (`name`, cost)
VALUES 
    ('Audi', 52642);
    ('Mercedes', 57127);
    ('Skoda', 9000);
    ('Volvo', 29000);
    ('Bentley', 350000);
    ('Citroen', 21000);
    ('Hummer', 41400);
    ('Volkswagen', 21600);

CREATE VIEW cars_1_1 AS
SELECT * FROM Cars
WHERE cost < 25000;

ALTER VIEW cars_1_2 AS
SELECT * FROM Cars
WHERE cost < 30000;

CREATE VIEW cars_1_3 AS
SELECT * FROM Cars
WHERE name = "Audi" OR name = "Skoda";