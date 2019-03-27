CREATE TABLE contacts (
user_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(25) NOT NULL);

INSERT INTO contacts VALUES (NULL, 'Петр');
INSERT INTO contacts VALUES (NULL, 'Женя');
INSERT INTO contacts VALUES (NULL, 'Коля');
INSERT INTO contacts VALUES (NULL, 'Игорь');

SELECT name FROM contacts;

# внешний ключ

CREATE TABLE activites (
act_id INT AUTO_INCREMENT PRIMARY KEY,
activity VARCHAR(20) NOT NULL, 
user_id INT NULL, 
FOREIGN KEY (user_id) REFERENCES contacts (user_id));

INSERT INTO INT activites VALUES (NULL, 'Собаки', (SELECT user_id FROM contacts WHERE name = 'Петр'));

SELECT * FROM activites;


# Один к одному 

CREATE TABLE persons (
person_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL 
);

INSERT INTO persons VALUES (NULL, 'Петр');
INSERT INTO persons VALUES (NULL, 'Николай');
INSERT INTO persons VALUES (NULL, 'Роман');

CREATE TABLE locations (
person_location_id INT NOT NULL PRIMARY KEY, name VARCHAR(20), 
FOREIGN KEY(person_location_id) REFERENCES persons (person_id)
);

INSERT INTO locations VALUES(1,'Киев');
INSERT INTO locations VALUES(2,'Львов');
INSERT INTO locations VALUES(3,'Харьков');

SELECT * FROM locations;

# Один ко многим

CREATE TABLE users (
user_id INT PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(20) NOT NULL,
profession_id INT
);

INSERT INTO users VALUES(NULL, 'Петр');
INSERT INTO users VALUES(NULL, 'Женя');
INSERT INTO users VALUES(NULL, 'Коля');

CREATE TABLE professions (
profession_id INT PRIMARY KEY
profession_name VARCHAR(20) NOT NULL
);

INSERT TABLE professions VALUES (1, 'Моляр');
INSERT TABLE professions VALUES (2, 'Кодер');
INSERT TABLE professions VALUES (3, 'Менеджер');

ALTER TABLE users ADD FOREIGN KEY (profession_id) REFERENCES professions (profession_id);
UPDATE users SET profession_id = 1 WHERE user_name IN('Женя','Коля');
SELECT * FROM users;

# Многие ко многим

CREATE TABLE students (
student_id INT PRIMARY KEY AUTO_INCREMENT,
student_name VARCHAR(20) NOT NULL
);

INSERT INTO students VALUES (NULL, 'Петр');
INSERT INTO students VALUES (NULL, 'Женя');
INSERT INTO students VALUES (NULL, 'Коля');

CREATE TABLE classes (
classes_id INT (PRIMARY KEY AUTO_INCREMENT,
class_name VARCHAR(20) NOT NULL
);

INSERT INTO classes VARCHAR (NULL, '1а');
INSERT INTO classes VARCHAR (NULL, '2б');
INSERT INTO classes VARCHAR (NULL, '1в');

CREATE TABLE students_classes (
student_id INT NOT NULL, 
class_id INT NOT NULL,
PRIMARY KEY (student_id, class_id),
FOREIGN KEY (student_id) REFERENCES students (student_id),
FOREIGN KEY (class_id) REFERENCES classes (class_id));

INSERT INTO students_classes VALUES (1.1);
INSERT INTO students_classes VALUES (1.2);
INSERT INTO students_classes VALUES (1.3);
