CREATE TABLE reviews (
	review_id INT PRIMARY KEY,
	review_rank INT,
	review_comment VARCHAR(50) NOT NULL DEFAULT "Нет комментария",
	FOREIGN KEY (review_id) REFERENCES books (book_id)
);

INSERT INTO reviews VALUES ((SELECT book_id FROM books WHERE book_name = 'Магия и Кровь'),
8, 'Красоные битвы и хороший сюжет');
INSERT INTO reviews VALUES ((SELECT book_id FROM books WHERE book_name = 'Уникальная вселенная'),
9, 'Невероятная книга. Просто фантастика!');
INSERT INTO reviews VALUES ((SELECT book_id FROM books WHERE book_name = 'Физика Просто!'),
3, 'Нифига не просто! ');
INSERT INTO reviews VALUES ((SELECT book_id FROM books WHERE book_name = 'Рассказ о цветах'),
5, 'Ну средненько так');

SELECT b.book_name AS Книга, r.review_rank AS Оценка, r.review_comment AS Комментарий, p.price AS Цена, p.publisher_name AS Издатель FROM books b NATURAL JOIN publishers p INNER JOIN reviews r ON b.book_id = r.review_id;
