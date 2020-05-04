/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    ISBN 985-475-004-3
    Exercises from page 63
*/

-- 1
SELECT univ_name 
FROM UNIVERSITY A
WHERE rating >= ANY
    (SELECT rating
	FROM UNIVERSITY B
	WHERE city = 'Воронеж');

-- 2
SELECT *
FROM STUDENT
WHERE city <> ALL 
	(SELECT city
	FROM UNIVERSITY);

SELECT *
FROM STUDENT
WHERE NOT city = ANY
	(SELECT city
	FROM UNIVERSITY);
 
-- 3
SELECT *
FROM EXAM_MARKS
WHERE mark > ALL
	(SELECT mark 
	FROM EXAM_MARKS
	WHERE subj_id = 10);

-- 4
SELECT * 
FROM EXAM_MARKS
WHERE mark > 
	(SELECT MAX(mark)
	FROM EXAM_MARKS 
	WHERE subj_id = 10);
