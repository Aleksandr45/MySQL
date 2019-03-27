/*
** ALTER TABLE таблица;
** ALTER TABLE таблица ADD COLUMN поле PRIMARY KEY (поле);
** ALTER TABLE таблица DROP COLUMN поле;
** ALTER TABLE таблица RENAME TO поле;
** ALTER TABLE таблица CHANGE COLUMN поле;
** ALTER TABLE таблица MODIFY COLUMN поле;
*/

# Выбор таблицы которую будем изменять и добавлять колонку с ключем 

ALTER TABLE users ADD COLUMN id INT AUTO_INCREMENT FIRST, ADD PRIMARY KEY (id);

# Добавить колонку перед полем

ALTER TABLE users ADD COLUMN test VARCHAR(10) AFTER id; 

# Изменить и удалить колонку 

ALTER TABLE users DROP COLUMN test;

# Изменить имя таблицы

ALTER TABLE users RENAME TO testUsers;

# Изменить колонку 

ALTER TABLE users CHANGE COLUMN name names_list VARCHAR(15) NOT NULL;

ALTER TABLE users MODIFY COLUMN names_list VARCHAR(20);

ALTER TABLE users DROP COLUMN id, CHANGE COLUMN names_list VARCHAR(15); 

ALTER TABLE users ADD COLUMN id INT AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (id), CHANGE COLUMN names_list VARCHAR(20),
ADD COLUMN lname_list VARCHAR(20);