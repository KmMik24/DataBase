/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    ISBN 985-475-004-3
    Exercises from page 58
*/

-- 1
SELECT * 
FROM STUDENT A 
WHERE EXISTS 
    (SELECT univ_id 
    FROM UNIVERSITY B
    WHERE rating > 300
    AND A.univ_id = B.univ_id);

-- 2
SELECT firstname, A.univ_id, student_id, A.city
FROM STUDENT A, UNIVERSITY B
WHERE A.univ_id = B.univ_id
AND rating > 300;

-- 3
SELECT * 
FROM STUDENT A
WHERE EXISTS 
    (SELECT *
    FROM UNIVERSITY B
    WHERE A.city = B.city
    AND NOT A.univ_id = B.univ_id);

-- 4
SELECT *
FROM SUBJECTS A
WHERE EXISTS
    (SELECT subj_id
    FROM EXAM_MARKS B
    WHERE A.subj_id = B.subj_id
    AND B.mark > 2
    AND 1 < (SELECT COUNT(*)
        FROM EXAM_MARKS C
        WHERE C.subj_id = A.subj_id
        AND C.student_id <> B.student_id)
    );
<<<<<<< HEAD

=======
>>>>>>> 0df2d7e9fbfc0dd6e72dc918eb5f1afc78c0fb9d
