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

-- 11
SELECT surname, firstname
FROM STUDENT A JOIN UNIVERSITY B
ON A.univ_id = B.univ_id
AND A.city != B.city;

-- 12
SELECT COUNT(exam_id)
FROM EXAM_MARKS
WHERE student_id = 32
AND mark > 3;

-- 13
SELECT surname, firstname
FROM SUBJ_LECT A, SUBJ_LECT B, LECTURER C
WHERE A.lecturer_id = C.lecturer_id
AND B.lecturer_id = C.lecturer_id 
AND A.lecturer_id = B.lecturer_id
AND A.subj_id < B.subj_id;

-- 14
SELECT surname, firstname
FROM SUBJ_LECT A, SUBJECTS B, LECTURER C
WHERE A.lecturer_id = C.lecturer_id
AND A.subj_id = B.subj_id 
AND B.semester < B.semester;

-- 15
SELECT subj_name 
FROM SUBJ_LECT A, SUBJ_LECT B, SUBJECTS C
WHERE A.subj_id = C.subj_id
AND B.subj_id = C.subj_id 
AND A.subj_id = B.subj_id
AND A.lecturer_id < B.lecturer_id;

-- 16
SELECT  C.subj_name, A.surname, A.firstname, B.city 
FROM LECTURER A, STUDENT B, SUBJECTS C, SUBJ_LECT D
WHERE B.univ_id = 
    (SELECT univ_id
    FROM UNIVERSITY
    WHERE univ_name = 'ВГУ')
AND A.univ_id = B.univ_id
AND A.lecturer_id = D.lecturer_id
AND C.subj_id = D.subj_id
ORDER BY C.subj_name;

-- 17
SELECT hour
FROM SUBJECTS A
WHERE subj_id = 
    (SELECT subj_id
    FROM SUBJ_LECT B
    WHERE A.subj_id = B.subj_id 
    AND lecturer_id =
        (SELECT lecturer_id
        FROM LECTURER C
        WHERE surname = 'Лагутин'
        AND B.lecturer_id = C.lecturer_id)
    );

-- 18
SELECT surname
FROM LECTURER A, SUBJ_LECT B
WHERE A.lecturer_id = B.lecturer_id
AND subj_id = 
    (SELECT subj_id
    FROM SUBJ_LECT С
    WHERE lecturer_id =
        (SELECT lecturer_id
        FROM LECTURER
        WHERE surname = 'Сорокин')
    )
AND A.surname != 'Сорокин';

-- 19
SELECT DISTINCT surname
FROM LECTURER A, SUBJ_LECT B, SUBJECTS
WHERE A.lecturer_id = B.lecturer_id
AND hour >
    (SELECT hour
    FROM SUBJECTS
    WHERE subj_id = 
        (SELECT subj_id
        FROM SUBJ_LECT
        WHERE lecturer_id =
            (SELECT lecturer_id
            FROM LECTURER
            WHERE surname = 'Колесников')
        )
    )
AND A.surname != 'Колесников';

-- 20
SELECT surname, firstname
FROM LECTURER A, SUBJ_LECT B
WHERE subj_id = 
    (SELECT subj_id
    FROM SUBJ_LECT C
    WHERE C.subj_id = B.subj_id
    AND lecturer_id =
        (SELECT lecturer_id
        FROM LECTURER D
        WHERE surname = 'Сорокин')
AND A.lecturer_id = B.lecturer_id
AND surname != 'Сорокин');

-- 21
SELECT surname
FROM LECTURER A
WHERE univ_id = 
    (SELECT univ_id
    FROM UNIVERSITY
    WHERE rating < 300);

-- 22
SELECT univ_name
FROM UNIVERSITY A
WHERE A.city = 'Москва'
AND A.rating <
    (SELECT rating
    FROM UNIVERSITY B
    WHERE B.univ_name = 'ВГУ');

-- 23
SELECT surname
FROM STUDENT A
WHERE univ_id =
    (SELECT univ_id
    FROM UNIVERSITY B
    WHERE A.univ_id = B.univ_id
    AND B.city = 
        (SELECT TOP(1) city 
        FROM UNIVERSITY 
        ORDER BY city)
    );

-- 24
SELECT surname, firstname, A.student_id
FROM STUDENT A
WHERE student_id =
    (SELECT student_id
    FROM EXAM_MARKS B
    WHERE A.student_id = B.student_id
    GROUP BY B.student_id
    HAVING AVG(mark) = 4);

-- 25
SELECT SUM(hour)
FROM SUBJECTS A
WHERE A.subj_id = 
    (SELECT B.subj_id
    FROM SUBJ_LECT B
    WHERE A.subj_id = B.subj_id
    AND B.lecturer_id =
        (SELECT C.lecturer_id
        FROM LECTURER C
        WHERE B.lecturer_id = C.lecturer_id
        AND univ_id = 
            (SELECT univ_id
            FROM UNIVERSITY
            WHERE univ_name = 'ВГУ')
        )
    )
GROUP BY subj_id, semester
HAVING semester < 3;

-- 26
SELECT AVG(hour)
FROM SUBJECTS A, SUBJ_LECT B
WHERE A.subj_id = B.subj_id
AND B.lecturer_id =
    (SELECT lecturer_id
    FROM LECTURER C
    WHERE B.lecturer_id = C.lecturer_id
    AND univ_id = 
        (SELECT univ_id
        FROM UNIVERSITY
        WHERE univ_name = 'ВГУ')
    )
GROUP BY A.subj_id, semester
HAVING semester BETWEEN 2 AND 5;

-- 27
SELECT COUNT(A.student_id)
FROM STUDENT A, UNIVERSITY B
WHERE 2 = ANY
    (SELECT mark
    FROM EXAM_MARKS B
    WHERE A.student_id = B.student_id)
AND A.univ_id = B.univ_id
AND A.city != B.city;

-- 28
SELECT surname, firstname
FROM STUDENT A, UNIVERSITY B
WHERE A.student_id =
    (SELECT C.student_id
    FROM EXAM_MARKS C
    WHERE A.student_id = C.student_id
    AND 5 = ALL 
        (SELECT mark 
        FROM EXAM_MARKS D
        WHERE C.student_id = D.student_id)
    )
AND A.univ_id = B.univ_id
AND A.city != B.city;

-- 29
SELECT surname, firstname
FROM STUDENT A, UNIVERSITY B
WHERE 2 <= 
    (SELECT COUNT(mark)
    FROM EXAM_MARKS C
    WHERE A.student_id = C.student_id
    AND mark = 5)
AND A.univ_id = B.univ_id
AND A.city != B.city;

-- 30
SELECT surname
FROM STUDENT JOIN EXAM_MARKS
ON STUDENT.student_id = EXAM_MARKS.student_id
AND subj_id = 10
AND mark > 2;

-- 31
-- УЖЕ НЕ ОХОТО ПОЧТИ ТО ЖЕ САМОЕ