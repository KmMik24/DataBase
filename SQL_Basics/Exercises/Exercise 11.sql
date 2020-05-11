/*
	SQL В ПРИМЕРАХ И ЗАДАЧАХ.
	ISBN 985-475-004-3
	Exercises from page 73
*/

-- 1
SELECT A.surname, B.surname
FROM STUDENT A, STUDENT B
WHERE A.city = B.city
AND A.surname < B.surname;

-- 2
SELECT A.univ_name, B.univ_name
FROM UNIVERSITY A, UNIVERSITY B
WHERE A.city = B.city
AND A.univ_name < B.univ_name;

-- 3
SELECT A.univ_name, A.city 
FROM UNIVERSITY A, UNIVERSITY B
WHERE A.rating >= B.rating
AND B.univ_name = 'ВГУ'
