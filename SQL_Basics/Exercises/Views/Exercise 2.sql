/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    ISBN 985-475-004-3
    Exercises from page 125
*/

-- 1
-- Устный вопрос

-- 2
CREATE VIEW STIP AS
    SELECT student_id, stipend
    FROM STUDENT
    WHERE stipend BETWEEN 100 AND 200
    WITH CHECK OPTION;