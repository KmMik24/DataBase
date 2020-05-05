/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    ISBN 985-475-004-3
    Exercises from page 66
*/

-- 1
SELECT univ_name, city, rating, 'Высокий'
    FROM UNIVERSITY
    WHERE rating >= 300
UNION
SELECT univ_name, city, rating, 'Низкий'
    FROM UNIVERSITY
    WHERE rating < 300;

-- 2
 
        
