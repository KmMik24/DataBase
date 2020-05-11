/*
  SQL В ПРИМЕРАХ И ЗАДАЧАХ.
  ISBN 985-475-004-3
  Exercises from page 72
*/

-- 1
SELECT surname, subj_id
FROM STUDENT JOIN EXAM_MARKS
ON STUDENT.student_id = EXAM_MARKS.student_id;

-- 2
SELECT surname, subj_id
FROM STUDENT LEFT OUTER JOIN EXAM_MARKS
ON STUDENT.student_id = EXAM_MARKS.student_id;

-- 3
SELECT surname, subj_name
FROM STUDENT, EXAM_MARKS, SUBJECTS
WHERE STUDENT.student_id = EXAM_MARKS.student_id
AND SUBJECTS.subj_id = EXAM_MARKS.subj_id;

-- 4
SELECT surname, firstname, subj_name
FROM STUDENT A, EXAM_MARKS B, SUBJECTS C
WHERE B.student_id = A.student_id
AND B.subj_id = C.subj_id
AND B.mark >= 4;

-- 5
SELECT surname, firstname, subj_name
FROM STUDENT A, EXAM_MARKS B, SUBJECTS C
WHERE B.student_id = A.student_id
AND B.subj_id = C.subj_id
AND B.mark >= 4;

-- 6
SELECT univ_name, MAX(stipend)
FROM UNIVERSITY JOIN STUDENT
ON UNIVERSITY.univ_id = STUDENT.univ_id
AND UNIVERSITY.rating > 300
GROUP BY univ_name;

SELECT surname, rating
FROM STUDENT LEFT OUTER JOIN UNIVERSITY
ON STUDENT.univ_id = UNIVERSITY.univ_id
ORDER BY surname;
