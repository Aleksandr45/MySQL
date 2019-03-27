/*
** RIGHT/LEFT (поле, кол.символов) - функция которая возвращает символы в заданном количестве с слева и права от значения в поле. 
** SUBSTRING_INDEX (поле, разделитель, номер разделителя) - функция которая возвращает все символы до разделителя.
** UPPER/LOWER (поле) - регистр символов.
** RTRIM/LTRIM (поле) - убрать пробелы с права или слева
*/

SELECT UPPER(names_list) FROM users;

ALTER TABLE users ADD COLUMN fnames_list VARCHAR(20) NOT NULL,
ADD COLUMN lnames_list VARCHAR(20) NOT NULL;

UPDATE users SET fnames_list = SUBSTRING_INDEX(names_list, ' ', 1) AND lnames_list = SUBSTRING_INDEX(names_list, ' ', -1);

SELECT RIGHT(names_list, 2) FROM users;
SELECT LEFT(names_list, 2) FROM users;

