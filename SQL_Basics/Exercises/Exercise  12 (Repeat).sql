/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    ISBN 985-475-004-3
    Exercises from page 74
*/

-- 1
SELECT firstname, surname, student_id
FROM STUDENT A
WHERE 5 = ANY 
    (SELECT mark
    FROM EXAM_MARKS B
    WHERE A.student_id = B.student_id);
    
-- 2
SELECT firstname, surname
FROM STUDENT A
WHERE student_id = 
    (SELECT student_id 
    FROM EXAM_MARKS B
    WHERE  A.student_id = B.student_id
    GROUP BY B.student_id
    HAVING SUM(mark) = 12);

-- 3
SELECT student_id
FROM EXAM_MARKS A
WHERE student_id != 12 
AND mark = ANY
    (SELECT mark
    FROM EXAM_MARKS B
    WHERE B.student_id = 12);

-- 4
SELECT A.lecturer_id, B.lecturer_id
FROM SUBJ_LECT A, SUBJ_LECT B
WHERE A.subj_id = B.subj_id
AND A.lecturer_id < B.lecturer_id;

-- 5
SELECT firstname, surname
FROM STUDENT
WHERE 5 > ALL
    (SELECT mark
    FROM EXAM_MARKS
    WHERE STUDENT.student_id = EXAM_MARKS.student_id);

-- 6
SELECT subj_name
FROM SUBJECTS
GROUP BY subj_name, hour
HAVING hour > 50;

-- 7 
SELECT COUNT(student_id)
FROM STUDENT A
WHERE NOT EXISTS
    (SELECT mark
    FROM EXAM_MARKS B
    WHERE A.student_id = B.student_id);

-- 8
SELECT COUNT(student_id)
FROM STUDENT
WHERE 5 = ALL
    (SELECT mark
    FROM EXAM_MARKS);

-- 9
SELECT C.subj_id, subj_name, hour, semester
FROM LECTURER A, SUBJ_LECT B, SUBJECTS C
WHERE A.lecturer_id = B.lecturer_id
AND B.subj_id = C.subj_id
AND A.surname = 'Колесников'; 

-- 10
SELECT firstname, surname
FROM LECTURER A, SUBJ_LECT B, SUBJECTS C
WHERE A.lecturer_id = B.lecturer_id
AND B.subj_id = C.subj_id
AND semester = 1;






