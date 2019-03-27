/*
** Соединения
** Внутренее соединение - поле INNER JOIN поле ON условие
** Перекрестное соединение - поле CROSS JOIN поле
** Естественное соединение - поле NATURAL JOIN поле
** Внешние соединение 
** Левое внешнее соединение - поле LEFT JOIN поле ON условие 
** Правое внешнее соединение - поле RIGHT JOIN поле ON условие 
*/

CREATE DATABASE books_db;

USE books_db;

CREATE TABLE publishers (
publisher_id INT AUTO_INCREMENT PRIMARY KEY,
publisher_name VARCHAR(30) NOT NULL
);

INSERT INTO publishers VALUES (NULL, 'Все книги');
INSERT INTO publishers VALUES (NULL, 'Прокачай мозги');
INSERT INTO publishers VALUES (NULL, 'Мир фантазий');

CREATE TABLE books (
book_id INT AUTO_INCREMENT PRIMARY KEY,
book_name VARCHAR(30) NOT NULL,
publisher_id INT,
FOREIGN KEY (publisher_id) REFERENCES publishers (publisher_id) 
);

INSERT INTO books VALUES (NULL, 'Магия и кровь', 3);
INSERT INTO books VALUES (NULL, 'Уникальная вселеная', NULL);
INSERT INTO books VALUES (NULL, 'Физика просто', 2);
INSERT INTO books VALUES (NULL, 'Рассказ о цветах', 1);

SELECT * FROM publishers;

SELECT book_name, publisher_name FROM books b CROSS JOIN publishers p;
SELECT b.book_name, p.publisher_name, p.publisher_id FROM books b NATURAL JOIN publishers p;
SELECT b.book_name, p.publisher_name FROM books b INNER JOIN publishers p ON B.publisher_id = P.publisher_id;
SELECT book_name, publisher_name FROM books LEFT JOIN publishers ON publisher USING (publisher_id);
SELECT book_name, publisher_name FROM books RIGHT JOIN publishers ON books.publisher_id = publishers.publisher_id WHERE books.publisher_id = NULL;


