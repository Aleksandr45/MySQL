CREATE TABLE users (
	user_id INT AUTO_INCREMENT PRIMARY KEY,
	fname VARCHAR(25) NOT NULL,
	lname VARCHAR(25),
	email VARCHAR(25)
);

ALTER TABLE users ADD COLUMN income INT DEFAULT 0;
INSERT INTO users VALUES (NULL, 'Петр', 'Радько', 'exampla@gmail.com');
