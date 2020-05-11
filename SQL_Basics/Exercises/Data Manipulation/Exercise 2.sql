/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    ISBN 985-475-004-3
    Exercises from page 85
*/

-- 1
INSERT INTO STUDENT_PASSED
    SELECT *
    FROM STUDENT
    WHERE 1 <=
        (SELECT COUNT(subj_id)
        FROM EXAM_MARKS
        WHERE EXAM_MARKS.student_id = STUDENT.student_id
        AND mark > 2)
    AND STUDENT.student_id != 12;


-- 2
DELETE FROM SUBJECTS
    WHERE 0 =
        (SELECT COUNT(mark)
        FROM EXAM_MARKS
        WHERE EXAM_MARKS.subj_id = SUBJECTS.subj_id);

-- 3
UPDATE STUDENT
    SET stipend = stipend * 1.2
    WHERE 50 <
        (SELECT SUM(mark)
        FROM EXAM_MARKS
        WHERE EXAM_MARKS.student_id = STUDENT.student_id);