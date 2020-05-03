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

