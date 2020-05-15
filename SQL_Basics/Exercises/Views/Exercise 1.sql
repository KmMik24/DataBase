/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    ISBN 985-475-004-3
    Exercises from page 121
*/

-- 1
CREATE VIEW BEST_MARKS AS
    SELECT *
    FROM STUDENT A
    WHERE A.student_id =
        (SELECT C.student_id
        FROM EXAM_MARKS C
        WHERE A.student_id = C.student_id
        AND 5 = ALL 
            (SELECT mark 
            FROM EXAM_MARKS D
            WHERE C.student_id = D.student_id)
        );

-- 2
CREATE VIEW STUD_CNT_IN_CITY AS
    SELECT DISTINCT city, COUNT(student_id) AS STUD_CNT
    FROM STUDENT
    WHERE city IS NOT NULL
    GROUP BY city;

-- 3
CREATE VIEW STUD_POINTS_INFO AS
    SELECT A.student_id, surname,
           firstname, AVG(B.mark) AS Average,
           SUM(B.mark) AS Summary
    FROM STUDENT A, EXAM_MARKS B
    WHERE A.student_id = B.student_id 
    GROUP BY A.student_id, surname, firstname;

-- 4
CREATE VIEW EXAM_NUMBERS AS
    SELECT student_id, COUNT(exam_id) AS Exams_Passed
    FROM EXAM_MARKS 
    GROUP BY student_id;