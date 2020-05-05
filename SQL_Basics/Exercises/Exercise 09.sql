/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    ISBN 985-475-004-3
    Exercises from page 66
*/

-- 1
SELECT univ_name, city, 'Высокий'
    FROM UNIVERSITY
    WHERE rating >= 300
UNION
SELECT univ_name, city, 'Низкий'
    FROM UNIVERSITY
    WHERE rating < 300
ORDER BY 3;


-- 2
SELECT surname, student_id, 'Успевает'
    FROM STUDENT A
    WHERE 3 <  ALL 
        (SELECT mark
        FROM EXAM_MARKS B
        WHERE A.student_id = B.student_id)
UNION
SELECT surname, student_id, 'Не успевает'
    FROM STUDENT A
    WHERE 3 = ANY 
        (SELECT mark
        FROM EXAM_MARKS B
        WHERE A.student_id = B.student_id)
UNION
SELECT surname, student_id, 'Не сдавал'
    FROM STUDENT A
    WHERE NOT EXISTS
        (SELECT mark
        FROM EXAM_MARKS B
        WHERE A.student_id = B.student_id) 
ORDER BY 1;
 

-- 3
SELECT surname, firstname, 'Преподаватель' 
    FROM LECTURER
    WHERE city = 'Москва'
UNION
SELECT surname, firstname, 'Студент'
    FROM STUDENT
    WHERE city = 'Москва'
ORDER BY 3;


-- 4
SELECT surname, firstname, 'Преподаватель' 
    FROM LECTURER
    WHERE univ_id = 
        (SELECT univ_id
        FROM UNIVERSITY
        WHERE univ_name = 'ВГУ')
UNION
SELECT surname, firstname, 'Студент'
    FROM STUDENT
    WHERE univ_id = 
        (SELECT univ_id
        FROM UNIVERSITY
        WHERE univ_name = 'ВГУ')
ORDER BY 3;

