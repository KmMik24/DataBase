/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    ISBN 985-475-004-3
    Exercises from page 27 and 28.
*/

-- 1
SELECT * FROM SUBJECTS;

-- 2
SELECT * FROM EXAM_MARKS WHERE subj_id = 22;

-- 3
SELECT kurs, surname, firstname, stipend FROM STUDENT; 

-- 4
SELECT subj_name, hour FROM SUBJECTS WHERE semester = 4;

-- 5
SELECT DISTINCT mark FROM EXAM_MARKS;

-- 6
SELECT DISTINCT surname FROM STUDENT WHERE kurs >= 3;

-- 7
SELECT surname, firstname, kurs FROM STUDENT WHERE stipend > 140;

-- 8
SELECT subj_name FROM SUBJECTS WHERE hour > 30;

-- 9
SELECT univ_name FROM UNIVERSITY WHERE rating > 300;

-- 10
SELECT surname, firstname, kurs FROM STUDENT where stipend >= 100 AND city = 'Воронеж';

-- 11
SELECT * FROM STUDENT WHERE (stipend < 100 OR NOT (birthday >= '10-03-1980' and student_id > 103));

-- 12
SELECT * FROM STUDENT where NOT ((birthday = '10-03-1980' or stipend > 100) and student_id >= 103);












