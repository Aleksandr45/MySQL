/*
** DELETE FROM таблица;
** DELETE FROM таблица WHERE условие;
** UPDATE таблица SET поле = значение WHERE условие;
*/

DELETE FROM movies;

DELETE FROM movies WHERE dropPer > 70;

UPDATE movies SET dislikes = 100 WHERE name = 'CMTV';

UPDATE movies SET dislikes = dislikes * 1; 

