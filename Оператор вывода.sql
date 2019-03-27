/*
** string - строковый тип данных 
** integer - целочисловой тип данных
** decimal - число с фиксированной точкой
** float - тип данных с одинарной точностью, под него выделяется 4 байта
** double - тип данных повышенной или двойной точности, под него выделяется 8 байт
*/

/*
** B+0 - 183, 10, 5
** BIN (2 система счисления) - 1011011, 1010, 101 
** OCT - (8 система счисления) - 267, 12, 5
** HEX (16 система счисления) 
*/

/*
** show database - посмотреть все базы данных
** create database - создать базу данных
** drop database - удалить базу данных
** use - использовать базу данных
*/

/*
** SELECT поле FROM таблица;
** SELECT поле FROM таблица WHERE поле = значение;
** SELECT поле FROM таблица WHERE поле = значение AND/OR поле = значение;
** SELECT поле FROM таблица WHERE поле = значение AND/OR поле = значение = LIKE '';
** SELECT поле FROM таблица WHERE поле = значение AND/OR/WHERE поле BETWEEN значение AND значение;
*/

# Вывести имя и стоимасть и таблицы

SELECT name.price FROM products;

# Вывести все из таблицы не больше чем десять столбцов

SELECT * FROM city LIMIT 10; 

# Вывести все как 

SELECT * FROM city AS Kiev;

# Вывести все из таблицы там где имя и репутация больше или равен

SELECT * FROM city WHERE name = 'Kiev' and population >= 1800000;

# Вывести имена и цены из таблицы там где рейтинг больше или равен семи

SELECT name.price FROM products WHERE rate >= 7;

# Вывести имена и цены из таблицы там где продукт и рейтинг равен семи

SELECT name.price FROM products WHERE shop_name = "Dicsi" AND rate = 7;

# Вывести имена из таблицы там продукты заканчиваются  

SELECT name FROM products WHERE shop_name LIKE ('Dicsi');

# Вывести имена и рейтинги там где рейтинг равен 

SELECT name.rate FROM products WHERE rate IN (7,8,9);

# Вывести имена и цены из таблицы там где цена между 50 и 100  

SELECT name.price FROM products WHERE price BETWEEN 50 AND 100;

# Обратный вызов

SELECT name.price FROM products WHERE NOT price BETWEEN 50 AND 100;

SELECT name.duration FROM movies WHERE (likes > 100 OR dislikes < 100) AND dropPer < 70;

SELECT fnames_list. SUM(price) FROM products GROUP BY fnames_list;

SELECT fnames_list. MAX(price) FROM products GROUP BY fnames_list;

# Вывод не содержащий дубликатов

SELECT DISTINCT fnames_list FROM products;



