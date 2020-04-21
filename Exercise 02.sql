/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    ISBN 985-475-004-3
    Exercises from page 31
*/

-- 1
SELECT subj_id FROM EXAM_MARKS WHERE exam_date BETWEEN '10-06-1999' AND '20-06-1999';

-- 2
SELECT * FROM EXAM_MARKS WHERE student_id IN (12, 32);

-- 3
SELECT subj_name FROM SUBJECTS WHERE subj_name LIKE 'И%';

-- 4
SELECT * FROM STUDENT WHERE firstname LIKE 'И%' OR firstname LIKE 'С%';

-- 5
SELECT * FROM EXAM_MARKS WHERE mark is NULL;

-- 6
SELECT * FROM EXAM_MARKS WHERE mark is NOT NULL;
