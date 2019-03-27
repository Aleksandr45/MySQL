CREATE DATABASE pepope_db;

CREATE TABLE users (
id INT PRIMARY KEY AUTO_INCREMENTM,
fname VARCHAR(20) NOT NULL,
lname VARCHAR(20),
email VARCHAR(30) NOT NULL UNIQUE
);

INSERT INTO users VALUES (NULL, 'Петр', 'Рядько', 'test@gmail.com');
INSERT INTO users VALUES (NULL, 'Роман', 'Попов', 'test@gmail.com');
INSERT INTO users VALUES (NULL, 'Евгений', 'Оливье', 'test@gmail.com');

CREATE TABLE private_inf (
id INT PRIMARY KEY,
income INT NOT NULL  DEFAULT 0,
FOREIGN KEY (id) REFERENS users(id)
);

INSERT INTO private_inf VALUES (1, 200000);
INSERT INTO private_inf VALUES (2, 250000);
INSERT INTO private_inf VALUES (3, 300000);

SELECT u.fname, u.lanem, p.income FROM users u INNER JOIN private_inf p ON u.id = p.id WHERE p.income > (SELECT AVG(income FROM private_inf));

SELECT u.fname, u.lname, s.income, s.adress FROM users u INNER JOIN secrets s ON u.id = s.id WHERE s,income > (SELECT AVG(income) FROM secrets ORDER BY income);

SELECT * FROM maxincome;

CREATE VIEW maxincome;
DROP VIEW maxincome;
