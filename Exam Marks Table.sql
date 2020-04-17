/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    Page 21. LECTURER Table.
*/

CREATE TABLE EXAM_MARKS (
    exam_id     INTEGER     NOT NULL Primary key,
    student_id  INTEGER     NOT NULL,
    subj_id     INTEGER,
    mark        INTEGER,
    exam_date   DATE
);

INSERT INTO EXAM_MARKS (exam_id, student_id, subj_id, mark, exam_date) 
    VALUES (145, 12, 10, 5, '2000-01-12');

INSERT INTO EXAM_MARKS (exam_id, student_id, subj_id, mark, exam_date) 
    VALUES (34, 32, 10, 4, '2000-01-23');

INSERT INTO EXAM_MARKS (exam_id, student_id, subj_id, mark, exam_date) 
    VALUES (75, 55, 10, 5, '2000-05-01');

INSERT INTO EXAM_MARKS (exam_id, student_id, subj_id, mark, exam_date) 
    VALUES (238, 12, 22, 3,'1999-06-17');

INSERT INTO EXAM_MARKS (exam_id, student_id, subj_id, mark, exam_date) 
    VALUES (639, 55, 22, NULL,'1999-06-22');

INSERT INTO EXAM_MARKS (exam_id, student_id, subj_id, mark, exam_date) 
    VALUES (43, 6, 22, 4,'2000-01-18');