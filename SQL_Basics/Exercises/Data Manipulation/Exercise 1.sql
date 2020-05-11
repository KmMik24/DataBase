/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    ISBN 985-475-004-3
    Exercises from page 80
*/

-- 1
INSERT INTO SUBJECTS
VALUES (201, 'Алгебра', 72, 4);

-- 2
INSERT INTO STUDENT (student_id, firstname, surname, kurs, city, univ_id)
VALUES (63, 'Николай', 'Орлов', 1, 'Воронеж', 10);

-- 3
DELETE
FROM EXAM_MARKS
WHERE student_id = 100;

-- 4
UPDATE UNIVERSITY
SET rating = rating + 5
WHERE city = 'Воронеж';

-- 5
UPDATE STUDENT
SET city = 'Воронеж'
WHERE surname = 'Иванов';
