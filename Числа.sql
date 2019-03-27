/*
** SUM(поле) - выводит сумму всех чисел (1174)
** MIN/MAX(поле) - выводит мин./макс. число (30/999)
** COUNT(поле) - выводит количество записей (5)
** AVG(поле) - выводит среднее арифметическое (234)
*/

SELECT SUM(price) FROM products;
SELECT MAX(price) FROM products;
SELECT fnames_list, lnames_list FROM products WHERE price = (SELECT MAX(price) FROM products);
SELECT fnames_list, lnames_list FROM products WHERE price = (SELECT COUNT(price) FROM products);
SELECT AVG(price) FROM products;