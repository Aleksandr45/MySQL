/*
** UPDATE таблица SET изменяемое поле = CASE WHEN поле = значение THEN значение ELSE значение END;
** ORDER BY - сортировка в алфовитном порядке и в обратном DESC
*/

UPDATE users SET rank = CASE
WHEN reputation > 350 THEN 'Элита'
WHEN reputation > 250 THEN 'Популярный' 
WHEN reputation = 0 THEN 'Пользователь'
ELSE 'Ошибка'
END;

SELECT fnames_list.reputation FROM users ORDER BY fnames_list; 
SELECT fnames_list.reputation FROM users ORDER BY reputation DESC; 

